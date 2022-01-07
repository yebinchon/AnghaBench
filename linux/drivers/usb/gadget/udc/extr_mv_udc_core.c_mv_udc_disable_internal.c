
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mv_udc {scalar_t__ active; int phy_regs; TYPE_2__* pdata; TYPE_1__* dev; } ;
struct TYPE_4__ {int (* phy_deinit ) (int ) ;} ;
struct TYPE_3__ {int dev; } ;


 int dev_dbg (int *,char*) ;
 int stub1 (int ) ;
 int udc_clock_disable (struct mv_udc*) ;

__attribute__((used)) static void mv_udc_disable_internal(struct mv_udc *udc)
{
 if (udc->active) {
  dev_dbg(&udc->dev->dev, "disable udc\n");
  if (udc->pdata->phy_deinit)
   udc->pdata->phy_deinit(udc->phy_regs);
  udc_clock_disable(udc);
  udc->active = 0;
 }
}
