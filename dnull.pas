{$MODE OBJFPC}
unit dnull;

interface

{$IF not Defined(NORTL)}
uses
  variants;
{$ENDIF}

type
  PNull = ^TNull;
  TNull = record end;

const
  NULL: TNull = ();

{$IF not Defined(NORTL)}
operator := (Null: TNull): Variant; inline;
{$ENDIF}

implementation

{$IF not Defined(NORTL)}
operator := (Null: TNull): Variant; inline;
begin
  Result := variants.null;
end;
{$ENDIF}

end.
