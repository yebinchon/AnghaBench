
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_port {TYPE_1__* serial; int interrupt_in_urb; } ;
struct TYPE_2__ {int dev; } ;


 int GFP_KERNEL ;
 int VISOR_CLOSE_NOTIFICATION ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 int usb_control_msg (int ,int ,int ,int,int,int,unsigned char*,int,int) ;
 int usb_kill_urb (int ) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int usb_serial_generic_close (struct usb_serial_port*) ;

__attribute__((used)) static void visor_close(struct usb_serial_port *port)
{
 unsigned char *transfer_buffer;

 usb_serial_generic_close(port);
 usb_kill_urb(port->interrupt_in_urb);

 transfer_buffer = kmalloc(0x12, GFP_KERNEL);
 if (!transfer_buffer)
  return;
 usb_control_msg(port->serial->dev,
      usb_rcvctrlpipe(port->serial->dev, 0),
      VISOR_CLOSE_NOTIFICATION, 0xc2,
      0x0000, 0x0000,
      transfer_buffer, 0x12, 300);
 kfree(transfer_buffer);
}
