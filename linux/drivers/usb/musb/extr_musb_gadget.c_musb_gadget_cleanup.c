
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct musb {scalar_t__ port_mode; int g; int gadget_work; } ;


 scalar_t__ MUSB_HOST ;
 int cancel_delayed_work_sync (int *) ;
 int usb_del_gadget_udc (int *) ;

void musb_gadget_cleanup(struct musb *musb)
{
 if (musb->port_mode == MUSB_HOST)
  return;

 cancel_delayed_work_sync(&musb->gadget_work);
 usb_del_gadget_udc(&musb->g);
}
