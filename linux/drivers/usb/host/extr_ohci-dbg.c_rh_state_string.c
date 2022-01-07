
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ohci_hcd {int rh_state; } ;






__attribute__((used)) static const char *rh_state_string(struct ohci_hcd *ohci)
{
 switch (ohci->rh_state) {
 case 130:
  return "halted";
 case 128:
  return "suspended";
 case 129:
  return "running";
 }
 return "?";
}
