
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct musb {int hcd; } ;


 int usb_put_hcd (int ) ;

void musb_host_free(struct musb *musb)
{
 usb_put_hcd(musb->hcd);
}
