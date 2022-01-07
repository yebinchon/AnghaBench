
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usba_udc {int clocked; int pclk; int hclk; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int pm_stay_awake (int *) ;

__attribute__((used)) static int start_clock(struct usba_udc *udc)
{
 int ret;

 if (udc->clocked)
  return 0;

 pm_stay_awake(&udc->pdev->dev);

 ret = clk_prepare_enable(udc->pclk);
 if (ret)
  return ret;
 ret = clk_prepare_enable(udc->hclk);
 if (ret) {
  clk_disable_unprepare(udc->pclk);
  return ret;
 }

 udc->clocked = 1;
 return 0;
}
