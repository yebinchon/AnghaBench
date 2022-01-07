
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp1760_udc {int irqname; int irq; int gadget; int isp; } ;
struct isp1760_device {struct isp1760_udc udc; } ;


 int free_irq (int ,struct isp1760_udc*) ;
 int kfree (int ) ;
 int usb_del_gadget_udc (int *) ;

void isp1760_udc_unregister(struct isp1760_device *isp)
{
 struct isp1760_udc *udc = &isp->udc;

 if (!udc->isp)
  return;

 usb_del_gadget_udc(&udc->gadget);

 free_irq(udc->irq, udc);
 kfree(udc->irqname);
}
