
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_port {int bulk_out_size; int * bulk_out_buffers; int bulk_out_buffer; int * write_urbs; int write_urb; int write_urbs_free; int bulk_out_endpointAddress; int write_fifo; TYPE_1__* serial; } ;
struct usb_serial_driver {int bulk_out_size; int write_bulk_callback; } ;
struct usb_endpoint_descriptor {int bEndpointAddress; } ;
struct usb_device {int dummy; } ;
struct TYPE_2__ {struct usb_device* dev; struct usb_serial_driver* type; } ;


 int ARRAY_SIZE (int *) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 scalar_t__ kfifo_alloc (int *,int ,int ) ;
 int kmalloc (int,int ) ;
 int set_bit (int,int *) ;
 int usb_alloc_urb (int ,int ) ;
 int usb_endpoint_maxp (struct usb_endpoint_descriptor*) ;
 int usb_fill_bulk_urb (int ,struct usb_device*,int ,int ,int,int ,struct usb_serial_port*) ;
 int usb_sndbulkpipe (struct usb_device*,int ) ;

__attribute__((used)) static int setup_port_bulk_out(struct usb_serial_port *port,
     struct usb_endpoint_descriptor *epd)
{
 struct usb_serial_driver *type = port->serial->type;
 struct usb_device *udev = port->serial->dev;
 int buffer_size;
 int i;

 if (kfifo_alloc(&port->write_fifo, PAGE_SIZE, GFP_KERNEL))
  return -ENOMEM;
 if (type->bulk_out_size)
  buffer_size = type->bulk_out_size;
 else
  buffer_size = usb_endpoint_maxp(epd);
 port->bulk_out_size = buffer_size;
 port->bulk_out_endpointAddress = epd->bEndpointAddress;

 for (i = 0; i < ARRAY_SIZE(port->write_urbs); ++i) {
  set_bit(i, &port->write_urbs_free);
  port->write_urbs[i] = usb_alloc_urb(0, GFP_KERNEL);
  if (!port->write_urbs[i])
   return -ENOMEM;
  port->bulk_out_buffers[i] = kmalloc(buffer_size, GFP_KERNEL);
  if (!port->bulk_out_buffers[i])
   return -ENOMEM;
  usb_fill_bulk_urb(port->write_urbs[i], udev,
    usb_sndbulkpipe(udev, epd->bEndpointAddress),
    port->bulk_out_buffers[i], buffer_size,
    type->write_bulk_callback, port);
 }

 port->write_urb = port->write_urbs[0];
 port->bulk_out_buffer = port->bulk_out_buffers[0];

 return 0;
}
