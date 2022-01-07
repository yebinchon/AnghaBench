
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fotg210_hcd {int rh_state; } ;







__attribute__((used)) static const char *rh_state_string(struct fotg210_hcd *fotg210)
{
 switch (fotg210->rh_state) {
 case 131:
  return "halted";
 case 128:
  return "suspended";
 case 130:
  return "running";
 case 129:
  return "stopping";
 }
 return "?";
}
