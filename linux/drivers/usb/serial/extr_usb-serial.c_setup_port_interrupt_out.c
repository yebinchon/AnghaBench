
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_port {int interrupt_out_size; int interrupt_out_buffer; int interrupt_out_urb; int interrupt_out_endpointAddress; TYPE_1__* serial; } ;
struct usb_serial_driver {int write_int_callback; } ;
struct usb_endpoint_descriptor {int bInterval; int bEndpointAddress; } ;
struct usb_device {int dummy; } ;
struct TYPE_2__ {struct usb_device* dev; struct usb_serial_driver* type; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kmalloc (int,int ) ;
 int usb_alloc_urb (int ,int ) ;
 int usb_endpoint_maxp (struct usb_endpoint_descriptor*) ;
 int usb_fill_int_urb (int ,struct usb_device*,int ,int ,int,int ,struct usb_serial_port*,int ) ;
 int usb_sndintpipe (struct usb_device*,int ) ;

__attribute__((used)) static int setup_port_interrupt_out(struct usb_serial_port *port,
     struct usb_endpoint_descriptor *epd)
{
 struct usb_serial_driver *type = port->serial->type;
 struct usb_device *udev = port->serial->dev;
 int buffer_size;

 port->interrupt_out_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!port->interrupt_out_urb)
  return -ENOMEM;
 buffer_size = usb_endpoint_maxp(epd);
 port->interrupt_out_size = buffer_size;
 port->interrupt_out_endpointAddress = epd->bEndpointAddress;
 port->interrupt_out_buffer = kmalloc(buffer_size, GFP_KERNEL);
 if (!port->interrupt_out_buffer)
  return -ENOMEM;
 usb_fill_int_urb(port->interrupt_out_urb, udev,
   usb_sndintpipe(udev, epd->bEndpointAddress),
   port->interrupt_out_buffer, buffer_size,
   type->write_int_callback, port,
   epd->bInterval);

 return 0;
}
