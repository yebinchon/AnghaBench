
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STAT_BUSMASK ;

__attribute__((used)) static const char *fas216_bus_phase(int stat)
{
 static const char *phases[] = {
  "DATA OUT", "DATA IN",
  "COMMAND", "STATUS",
  "MISC OUT", "MISC IN",
  "MESG OUT", "MESG IN"
 };

 return phases[stat & STAT_BUSMASK];
}
