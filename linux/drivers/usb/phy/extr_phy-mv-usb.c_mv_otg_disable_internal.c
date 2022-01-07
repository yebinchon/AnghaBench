
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mv_otg {scalar_t__ active; int phy_regs; TYPE_2__* pdata; TYPE_1__* pdev; } ;
struct TYPE_4__ {int (* phy_deinit ) (int ) ;} ;
struct TYPE_3__ {int dev; } ;


 int dev_dbg (int *,char*) ;
 int otg_clock_disable (struct mv_otg*) ;
 int stub1 (int ) ;

__attribute__((used)) static void mv_otg_disable_internal(struct mv_otg *mvotg)
{
 if (mvotg->active) {
  dev_dbg(&mvotg->pdev->dev, "otg disabled\n");
  if (mvotg->pdata->phy_deinit)
   mvotg->pdata->phy_deinit(mvotg->phy_regs);
  otg_clock_disable(mvotg);
  mvotg->active = 0;
 }
}
