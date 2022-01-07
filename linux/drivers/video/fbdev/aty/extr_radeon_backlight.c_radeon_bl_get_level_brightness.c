
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_bl_privdata {scalar_t__ negative; TYPE_2__* rinfo; } ;
struct TYPE_4__ {TYPE_1__* info; } ;
struct TYPE_3__ {int* bl_curve; } ;


 int FB_BACKLIGHT_MAX ;
 int MAX_RADEON_LEVEL ;

__attribute__((used)) static int radeon_bl_get_level_brightness(struct radeon_bl_privdata *pdata,
  int level)
{
 int rlevel;



 rlevel = pdata->rinfo->info->bl_curve[level] *
   FB_BACKLIGHT_MAX / MAX_RADEON_LEVEL;

 if (rlevel < 0)
  rlevel = 0;
 else if (rlevel > MAX_RADEON_LEVEL)
  rlevel = MAX_RADEON_LEVEL;

 if (pdata->negative)
  rlevel = MAX_RADEON_LEVEL - rlevel;

 return rlevel;
}
