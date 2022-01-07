
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_usb_platform_data {int (* phy_deinit ) (int ) ;} ;
struct mv_u3d {scalar_t__ active; int clk; int phy_regs; int dev; scalar_t__ clock_gating; } ;


 int clk_disable (int ) ;
 int dev_dbg (int ,char*) ;
 struct mv_usb_platform_data* dev_get_platdata (int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void mv_u3d_disable(struct mv_u3d *u3d)
{
 struct mv_usb_platform_data *pdata = dev_get_platdata(u3d->dev);
 if (u3d->clock_gating && u3d->active) {
  dev_dbg(u3d->dev, "disable u3d\n");
  if (pdata->phy_deinit)
   pdata->phy_deinit(u3d->phy_regs);
  clk_disable(u3d->clk);
  u3d->active = 0;
 }
}
