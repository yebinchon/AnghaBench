
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm501fb_par {struct sm501fb_info* info; } ;
struct sm501fb_info {scalar_t__ regs; } ;
struct fb_info {int dev; struct sm501fb_par* par; } ;


 int SM501_SYSCTRL_2D_ENGINE_STATUS ;
 scalar_t__ SM501_SYSTEM_CONTROL ;
 int dev_err (int ,char*) ;
 int smc501_readl (scalar_t__) ;

__attribute__((used)) static int sm501fb_sync(struct fb_info *info)
{
 int count = 1000000;
 struct sm501fb_par *par = info->par;
 struct sm501fb_info *fbi = par->info;


 while ((count > 0) &&
        (smc501_readl(fbi->regs + SM501_SYSTEM_CONTROL) &
  SM501_SYSCTRL_2D_ENGINE_STATUS) != 0)
  count--;

 if (count <= 0) {
  dev_err(info->dev, "Timeout waiting for 2d engine sync\n");
  return 1;
 }
 return 0;
}
