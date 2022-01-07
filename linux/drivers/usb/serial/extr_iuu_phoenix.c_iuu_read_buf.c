
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_serial_port {TYPE_2__* read_urb; int bulk_in_endpointAddress; TYPE_1__* serial; } ;
struct TYPE_5__ {int transfer_buffer; } ;
struct TYPE_4__ {int dev; } ;


 int GFP_ATOMIC ;
 int read_buf_callback ;
 int usb_fill_bulk_urb (TYPE_2__*,int ,int ,int ,int,int ,struct usb_serial_port*) ;
 int usb_rcvbulkpipe (int ,int ) ;
 int usb_submit_urb (TYPE_2__*,int ) ;

__attribute__((used)) static int iuu_read_buf(struct usb_serial_port *port, int len)
{
 int result;

 usb_fill_bulk_urb(port->read_urb, port->serial->dev,
     usb_rcvbulkpipe(port->serial->dev,
       port->bulk_in_endpointAddress),
     port->read_urb->transfer_buffer, len,
     read_buf_callback, port);
 result = usb_submit_urb(port->read_urb, GFP_ATOMIC);
 return result;
}
