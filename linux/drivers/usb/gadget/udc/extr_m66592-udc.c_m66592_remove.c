
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct m66592 {int clk; TYPE_2__* pdata; int ep0_req; TYPE_1__* ep; int reg; int timer; int gadget; } ;
struct TYPE_4__ {scalar_t__ on_chip; } ;
struct TYPE_3__ {int ep; } ;


 int clk_disable (int ) ;
 int clk_put (int ) ;
 int del_timer_sync (int *) ;
 int free_irq (int ,struct m66592*) ;
 int iounmap (int ) ;
 int kfree (struct m66592*) ;
 int m66592_free_request (int *,int ) ;
 struct m66592* platform_get_drvdata (struct platform_device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int usb_del_gadget_udc (int *) ;

__attribute__((used)) static int m66592_remove(struct platform_device *pdev)
{
 struct m66592 *m66592 = platform_get_drvdata(pdev);

 usb_del_gadget_udc(&m66592->gadget);

 del_timer_sync(&m66592->timer);
 iounmap(m66592->reg);
 free_irq(platform_get_irq(pdev, 0), m66592);
 m66592_free_request(&m66592->ep[0].ep, m66592->ep0_req);
 if (m66592->pdata->on_chip) {
  clk_disable(m66592->clk);
  clk_put(m66592->clk);
 }
 kfree(m66592);
 return 0;
}
