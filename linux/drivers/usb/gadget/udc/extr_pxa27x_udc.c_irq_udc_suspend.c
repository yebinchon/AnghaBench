
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ speed; } ;
struct TYPE_4__ {int irqs_suspend; } ;
struct pxa_udc {TYPE_3__ gadget; TYPE_2__* driver; TYPE_1__ stats; } ;
struct TYPE_5__ {int (* suspend ) (TYPE_3__*) ;} ;


 int UDCISR1 ;
 int UDCISR1_IRSU ;
 scalar_t__ USB_SPEED_UNKNOWN ;
 int ep0_idle (struct pxa_udc*) ;
 int stub1 (TYPE_3__*) ;
 int udc_writel (struct pxa_udc*,int ,int ) ;

__attribute__((used)) static void irq_udc_suspend(struct pxa_udc *udc)
{
 udc_writel(udc, UDCISR1, UDCISR1_IRSU);
 udc->stats.irqs_suspend++;

 if (udc->gadget.speed != USB_SPEED_UNKNOWN
   && udc->driver && udc->driver->suspend)
  udc->driver->suspend(&udc->gadget);
 ep0_idle(udc);
}
