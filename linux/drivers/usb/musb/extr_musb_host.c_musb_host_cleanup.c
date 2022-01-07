
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct musb {scalar_t__ port_mode; int hcd; } ;


 scalar_t__ MUSB_PERIPHERAL ;
 int usb_remove_hcd (int ) ;

void musb_host_cleanup(struct musb *musb)
{
 if (musb->port_mode == MUSB_PERIPHERAL)
  return;
 usb_remove_hcd(musb->hcd);
}
