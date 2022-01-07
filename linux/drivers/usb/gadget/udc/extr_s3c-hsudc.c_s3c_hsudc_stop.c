
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_gadget {int dummy; } ;
struct TYPE_4__ {int speed; } ;
struct s3c_hsudc {int * driver; int supplies; int irq; TYPE_3__* transceiver; int lock; TYPE_2__* pd; int dev; TYPE_1__ gadget; } ;
struct TYPE_6__ {int otg; } ;
struct TYPE_5__ {int (* gpio_uninit ) () ;} ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int IS_ERR_OR_NULL (TYPE_3__*) ;
 int USB_SPEED_UNKNOWN ;
 int disable_irq (int ) ;
 int otg_set_peripheral (int ,int *) ;
 int pm_runtime_put (int ) ;
 int regulator_bulk_disable (int ,int ) ;
 int s3c_hsudc_stop_activity (struct s3c_hsudc*) ;
 int s3c_hsudc_uninit_phy () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 () ;
 struct s3c_hsudc* to_hsudc (struct usb_gadget*) ;

__attribute__((used)) static int s3c_hsudc_stop(struct usb_gadget *gadget)
{
 struct s3c_hsudc *hsudc = to_hsudc(gadget);
 unsigned long flags;

 if (!hsudc)
  return -ENODEV;

 spin_lock_irqsave(&hsudc->lock, flags);
 hsudc->gadget.speed = USB_SPEED_UNKNOWN;
 s3c_hsudc_uninit_phy();

 pm_runtime_put(hsudc->dev);

 if (hsudc->pd->gpio_uninit)
  hsudc->pd->gpio_uninit();
 s3c_hsudc_stop_activity(hsudc);
 spin_unlock_irqrestore(&hsudc->lock, flags);

 if (!IS_ERR_OR_NULL(hsudc->transceiver))
  (void) otg_set_peripheral(hsudc->transceiver->otg, ((void*)0));

 disable_irq(hsudc->irq);

 regulator_bulk_disable(ARRAY_SIZE(hsudc->supplies), hsudc->supplies);
 hsudc->driver = ((void*)0);

 return 0;
}
