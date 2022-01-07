
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct urb {scalar_t__ actual_length; int transfer_buffer; struct usb_serial_port* context; } ;


 int USB_DEBUG_BRK ;
 scalar_t__ USB_DEBUG_BRK_SIZE ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;
 int usb_serial_generic_process_read_urb (struct urb*) ;
 int usb_serial_handle_break (struct usb_serial_port*) ;

__attribute__((used)) static void usb_debug_process_read_urb(struct urb *urb)
{
 struct usb_serial_port *port = urb->context;

 if (urb->actual_length == USB_DEBUG_BRK_SIZE &&
  memcmp(urb->transfer_buffer, USB_DEBUG_BRK,
      USB_DEBUG_BRK_SIZE) == 0) {
  usb_serial_handle_break(port);
  return;
 }

 usb_serial_generic_process_read_urb(urb);
}
