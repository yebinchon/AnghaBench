
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct fotg210_udc {struct fotg210_udc** ep; int ep0_req; int reg; int gadget; } ;


 int FOTG210_MAX_NUM_EP ;
 int fotg210_ep_free_request (struct fotg210_udc***,int ) ;
 int free_irq (int ,struct fotg210_udc*) ;
 int iounmap (int ) ;
 int kfree (struct fotg210_udc*) ;
 struct fotg210_udc* platform_get_drvdata (struct platform_device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int usb_del_gadget_udc (int *) ;

__attribute__((used)) static int fotg210_udc_remove(struct platform_device *pdev)
{
 struct fotg210_udc *fotg210 = platform_get_drvdata(pdev);
 int i;

 usb_del_gadget_udc(&fotg210->gadget);
 iounmap(fotg210->reg);
 free_irq(platform_get_irq(pdev, 0), fotg210);

 fotg210_ep_free_request(&fotg210->ep[0]->ep, fotg210->ep0_req);
 for (i = 0; i < FOTG210_MAX_NUM_EP; i++)
  kfree(fotg210->ep[i]);
 kfree(fotg210);

 return 0;
}
