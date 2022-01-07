
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i810fb_par {int dev_flags; } ;
struct TYPE_2__ {int accel_flags; } ;
struct fb_info {TYPE_1__ var; struct i810fb_par* par; } ;


 int LOCKUP ;
 int wait_for_engine_idle (struct fb_info*) ;

int i810fb_sync(struct fb_info *info)
{
 struct i810fb_par *par = info->par;

 if (!info->var.accel_flags || par->dev_flags & LOCKUP)
  return 0;

 return wait_for_engine_idle(info);
}
