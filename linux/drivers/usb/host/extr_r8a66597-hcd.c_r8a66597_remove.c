
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct r8a66597 {int clk; TYPE_1__* pdata; int reg; int rh_timer; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ on_chip; } ;


 int clk_put (int ) ;
 int del_timer_sync (int *) ;
 int iounmap (int ) ;
 struct r8a66597* platform_get_drvdata (struct platform_device*) ;
 struct usb_hcd* r8a66597_to_hcd (struct r8a66597*) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static int r8a66597_remove(struct platform_device *pdev)
{
 struct r8a66597 *r8a66597 = platform_get_drvdata(pdev);
 struct usb_hcd *hcd = r8a66597_to_hcd(r8a66597);

 del_timer_sync(&r8a66597->rh_timer);
 usb_remove_hcd(hcd);
 iounmap(r8a66597->reg);
 if (r8a66597->pdata->on_chip)
  clk_put(r8a66597->clk);
 usb_put_hcd(hcd);
 return 0;
}
