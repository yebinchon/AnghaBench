
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_serial_port {TYPE_2__* write_urb; int bulk_out_endpointAddress; TYPE_1__* serial; } ;
struct TYPE_5__ {int transfer_buffer; } ;
struct TYPE_4__ {int dev; } ;


 int GFP_ATOMIC ;
 int IUU_GET_STATE_REGISTER ;
 int iuu_status_callback ;
 int memset (int ,int ,int) ;
 int usb_fill_bulk_urb (TYPE_2__*,int ,int ,int ,int,int ,struct usb_serial_port*) ;
 int usb_sndbulkpipe (int ,int ) ;
 int usb_submit_urb (TYPE_2__*,int ) ;

__attribute__((used)) static int iuu_status(struct usb_serial_port *port)
{
 int result;

 memset(port->write_urb->transfer_buffer, IUU_GET_STATE_REGISTER, 1);
 usb_fill_bulk_urb(port->write_urb, port->serial->dev,
     usb_sndbulkpipe(port->serial->dev,
       port->bulk_out_endpointAddress),
     port->write_urb->transfer_buffer, 1,
     iuu_status_callback, port);
 result = usb_submit_urb(port->write_urb, GFP_ATOMIC);
 return result;

}
