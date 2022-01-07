
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_serial_port {TYPE_2__* write_urb; int bulk_out_endpointAddress; TYPE_1__* serial; } ;
struct urb {struct usb_serial_port* context; } ;
struct TYPE_5__ {char* transfer_buffer; } ;
struct TYPE_4__ {int dev; } ;


 int GFP_ATOMIC ;
 int IUU_SET_LED ;
 int iuu_rgbf_fill_buffer (char*,int ,int ,int,int,int ,int ,int) ;
 int iuu_rxcmd (struct urb*) ;
 int usb_fill_bulk_urb (TYPE_2__*,int ,int ,char*,int,int (*) (struct urb*),struct usb_serial_port*) ;
 int usb_sndbulkpipe (int ,int ) ;
 int usb_submit_urb (TYPE_2__*,int ) ;
 scalar_t__ xmas ;

__attribute__((used)) static void iuu_led_activity_off(struct urb *urb)
{
 struct usb_serial_port *port = urb->context;
 int result;
 char *buf_ptr = port->write_urb->transfer_buffer;
 if (xmas) {
  iuu_rxcmd(urb);
  return;
 } else {
  *buf_ptr++ = IUU_SET_LED;
  iuu_rgbf_fill_buffer(buf_ptr, 0, 0, 255, 255, 0, 0, 255);
 }
 usb_fill_bulk_urb(port->write_urb, port->serial->dev,
     usb_sndbulkpipe(port->serial->dev,
       port->bulk_out_endpointAddress),
     port->write_urb->transfer_buffer, 8 ,
     iuu_rxcmd, port);
 result = usb_submit_urb(port->write_urb, GFP_ATOMIC);
}
