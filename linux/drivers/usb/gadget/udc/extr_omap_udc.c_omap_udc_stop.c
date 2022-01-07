
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_gadget {int dummy; } ;
struct TYPE_6__ {int otg; } ;
struct TYPE_5__ {int * dc_clk; int * driver; int lock; TYPE_4__* transceiver; int gadget; } ;


 int IS_ERR_OR_NULL (TYPE_4__*) ;
 scalar_t__ machine_without_vbus_sense () ;
 int omap_udc_enable_clock (int) ;
 int omap_vbus_session (int *,int ) ;
 int otg_set_peripheral (int ,int *) ;
 int pullup_disable (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__* udc ;
 int udc_quiesce (TYPE_1__*) ;

__attribute__((used)) static int omap_udc_stop(struct usb_gadget *g)
{
 unsigned long flags;

 if (udc->dc_clk != ((void*)0))
  omap_udc_enable_clock(1);

 if (machine_without_vbus_sense())
  omap_vbus_session(&udc->gadget, 0);

 if (!IS_ERR_OR_NULL(udc->transceiver))
  (void) otg_set_peripheral(udc->transceiver->otg, ((void*)0));
 else
  pullup_disable(udc);

 spin_lock_irqsave(&udc->lock, flags);
 udc_quiesce(udc);
 spin_unlock_irqrestore(&udc->lock, flags);

 udc->driver = ((void*)0);

 if (udc->dc_clk != ((void*)0))
  omap_udc_enable_clock(0);

 return 0;
}
