
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct fusb300 {struct fusb300** ep; int ep0_req; int reg; int gadget; } ;


 int FUSB300_MAX_NUM_EP ;
 int free_irq (int ,struct fusb300*) ;
 int fusb300_free_request (struct fusb300***,int ) ;
 int iounmap (int ) ;
 int kfree (struct fusb300*) ;
 struct fusb300* platform_get_drvdata (struct platform_device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int usb_del_gadget_udc (int *) ;

__attribute__((used)) static int fusb300_remove(struct platform_device *pdev)
{
 struct fusb300 *fusb300 = platform_get_drvdata(pdev);
 int i;

 usb_del_gadget_udc(&fusb300->gadget);
 iounmap(fusb300->reg);
 free_irq(platform_get_irq(pdev, 0), fusb300);

 fusb300_free_request(&fusb300->ep[0]->ep, fusb300->ep0_req);
 for (i = 0; i < FUSB300_MAX_NUM_EP; i++)
  kfree(fusb300->ep[i]);
 kfree(fusb300);

 return 0;
}
