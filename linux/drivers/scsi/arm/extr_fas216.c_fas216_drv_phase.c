
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t phase; } ;
struct TYPE_5__ {TYPE_1__ scsi; } ;
typedef TYPE_2__ FAS216_Info ;


 size_t ARRAY_SIZE (char const**) ;
__attribute__((used)) static const char *fas216_drv_phase(FAS216_Info *info)
{
 static const char *phases[] = {
  [134] = "idle",
  [129] = "selection",
  [138] = "command",
  [136] = "data out",
  [137] = "data in",
  [133] = "message in",
  [132]= "disconnect",
  [130] = "expect message out",
  [131] = "message out",
  [128] = "status",
  [135] = "done",
 };

 if (info->scsi.phase < ARRAY_SIZE(phases) &&
     phases[info->scsi.phase])
  return phases[info->scsi.phase];
 return "???";
}
