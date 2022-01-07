
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usba_udc {int clocked; TYPE_1__* pdev; int pclk; int hclk; } ;
struct TYPE_2__ {int dev; } ;


 int clk_disable_unprepare (int ) ;
 int pm_relax (int *) ;

__attribute__((used)) static void stop_clock(struct usba_udc *udc)
{
 if (!udc->clocked)
  return;

 clk_disable_unprepare(udc->hclk);
 clk_disable_unprepare(udc->pclk);

 udc->clocked = 0;

 pm_relax(&udc->pdev->dev);
}
