
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;







__attribute__((used)) static inline char *xhci_slot_state_string(u32 state)
{
 switch (state) {
 case 128:
  return "enabled/disabled";
 case 129:
  return "default";
 case 131:
  return "addressed";
 case 130:
  return "configured";
 default:
  return "reserved";
 }
}
