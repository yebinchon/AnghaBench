
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* find_raw_port_number ) (struct usb_hcd*,int) ;} ;


 int stub1 (struct usb_hcd*,int) ;

int usb_hcd_find_raw_port_number(struct usb_hcd *hcd, int port1)
{
 if (!hcd->driver->find_raw_port_number)
  return port1;

 return hcd->driver->find_raw_port_number(hcd, port1);
}
