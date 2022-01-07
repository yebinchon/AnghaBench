
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *core_alua_dump_state(int state)
{
 switch (state) {
 case 133:
  return "Active/Optimized";
 case 134:
  return "Active/NonOptimized";
 case 132:
  return "LBA Dependent";
 case 130:
  return "Standby";
 case 128:
  return "Unavailable";
 case 131:
  return "Offline";
 case 129:
  return "Transitioning";
 default:
  return "Unknown";
 }

 return ((void*)0);
}
