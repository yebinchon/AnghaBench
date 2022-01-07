
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_serial_endpoints {scalar_t__ num_interrupt_in; struct usb_endpoint_descriptor** interrupt_in; } ;
struct usb_serial {struct usb_device* dev; struct usb_interface* interface; } ;
struct device {int dummy; } ;
struct usb_interface {struct usb_host_interface* cur_altsetting; struct device dev; } ;
struct TYPE_5__ {unsigned int bNumEndpoints; } ;
struct usb_host_interface {TYPE_3__* endpoint; TYPE_2__ desc; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct usb_device {TYPE_1__* actconfig; } ;
struct TYPE_6__ {struct usb_endpoint_descriptor desc; } ;
struct TYPE_4__ {struct usb_interface** interface; } ;


 scalar_t__ ARRAY_SIZE (struct usb_endpoint_descriptor**) ;
 int dev_dbg (struct device*,char*) ;
 int usb_endpoint_is_int_in (struct usb_endpoint_descriptor*) ;

__attribute__((used)) static int pl2303_endpoint_hack(struct usb_serial *serial,
     struct usb_serial_endpoints *epds)
{
 struct usb_interface *interface = serial->interface;
 struct usb_device *dev = serial->dev;
 struct device *ddev = &interface->dev;
 struct usb_host_interface *iface_desc;
 struct usb_endpoint_descriptor *endpoint;
 unsigned int i;

 if (interface == dev->actconfig->interface[0])
  return 0;


 iface_desc = dev->actconfig->interface[0]->cur_altsetting;

 for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
  endpoint = &iface_desc->endpoint[i].desc;

  if (!usb_endpoint_is_int_in(endpoint))
   continue;

  dev_dbg(ddev, "found interrupt in on separate interface\n");
  if (epds->num_interrupt_in < ARRAY_SIZE(epds->interrupt_in))
   epds->interrupt_in[epds->num_interrupt_in++] = endpoint;
 }

 return 0;
}
