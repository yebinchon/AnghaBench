
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int max_speed; int speed; int * ops; } ;
struct isp1760_udc {int irq; int irqname; TYPE_1__ gadget; int vbus_timer; int lock; int regs; struct isp1760_device* isp; } ;
struct isp1760_device {int dev; int regs; struct isp1760_udc udc; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned long IRQF_SHARED ;
 int USB_SPEED_HIGH ;
 int USB_SPEED_UNKNOWN ;
 int dev_name (int ) ;
 int free_irq (int,struct isp1760_udc*) ;
 int isp1760_udc_init (struct isp1760_udc*) ;
 int isp1760_udc_init_eps (struct isp1760_udc*) ;
 int isp1760_udc_irq ;
 int isp1760_udc_ops ;
 int isp1760_udc_vbus_poll ;
 int kasprintf (int ,char*,int ) ;
 int kfree (int ) ;
 int request_irq (int,int ,unsigned long,int ,struct isp1760_udc*) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 int usb_add_gadget_udc (int ,TYPE_1__*) ;

int isp1760_udc_register(struct isp1760_device *isp, int irq,
    unsigned long irqflags)
{
 struct isp1760_udc *udc = &isp->udc;
 int ret;

 udc->irq = -1;
 udc->isp = isp;
 udc->regs = isp->regs;

 spin_lock_init(&udc->lock);
 timer_setup(&udc->vbus_timer, isp1760_udc_vbus_poll, 0);

 ret = isp1760_udc_init(udc);
 if (ret < 0)
  return ret;

 udc->irqname = kasprintf(GFP_KERNEL, "%s (udc)", dev_name(isp->dev));
 if (!udc->irqname)
  return -ENOMEM;

 ret = request_irq(irq, isp1760_udc_irq, IRQF_SHARED | irqflags,
     udc->irqname, udc);
 if (ret < 0)
  goto error;

 udc->irq = irq;






 udc->gadget.ops = &isp1760_udc_ops;
 udc->gadget.speed = USB_SPEED_UNKNOWN;
 udc->gadget.max_speed = USB_SPEED_HIGH;
 udc->gadget.name = "isp1761_udc";

 isp1760_udc_init_eps(udc);

 ret = usb_add_gadget_udc(isp->dev, &udc->gadget);
 if (ret < 0)
  goto error;

 return 0;

error:
 if (udc->irq >= 0)
  free_irq(udc->irq, udc);
 kfree(udc->irqname);

 return ret;
}
