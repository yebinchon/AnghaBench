
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct r8a66597 {int clk; TYPE_2__* pdata; int ep0_req; TYPE_1__* ep; int timer; int gadget; } ;
struct platform_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ on_chip; } ;
struct TYPE_3__ {int ep; } ;


 int clk_disable_unprepare (int ) ;
 int del_timer_sync (int *) ;
 struct r8a66597* platform_get_drvdata (struct platform_device*) ;
 int r8a66597_free_request (int *,int ) ;
 int usb_del_gadget_udc (int *) ;

__attribute__((used)) static int r8a66597_remove(struct platform_device *pdev)
{
 struct r8a66597 *r8a66597 = platform_get_drvdata(pdev);

 usb_del_gadget_udc(&r8a66597->gadget);
 del_timer_sync(&r8a66597->timer);
 r8a66597_free_request(&r8a66597->ep[0].ep, r8a66597->ep0_req);

 if (r8a66597->pdata->on_chip) {
  clk_disable_unprepare(r8a66597->clk);
 }

 return 0;
}
