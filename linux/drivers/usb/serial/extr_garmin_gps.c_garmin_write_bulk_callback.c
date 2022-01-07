
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct urb {scalar_t__ transfer_buffer; struct usb_serial_port* context; } ;
struct garmin_data {scalar_t__ mode; } ;
typedef int __u8 ;


 scalar_t__ GARMIN_LAYERID_APPL ;
 scalar_t__ MODE_GARMIN_SERIAL ;
 scalar_t__ getLayerId (scalar_t__) ;
 int gsp_send_ack (struct garmin_data*,int ) ;
 int kfree (scalar_t__) ;
 struct garmin_data* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_serial_port_softint (struct usb_serial_port*) ;

__attribute__((used)) static void garmin_write_bulk_callback(struct urb *urb)
{
 struct usb_serial_port *port = urb->context;

 if (port) {
  struct garmin_data *garmin_data_p =
     usb_get_serial_port_data(port);

  if (getLayerId(urb->transfer_buffer) == GARMIN_LAYERID_APPL) {

   if (garmin_data_p->mode == MODE_GARMIN_SERIAL) {
    gsp_send_ack(garmin_data_p,
     ((__u8 *)urb->transfer_buffer)[4]);
   }
  }
  usb_serial_port_softint(port);
 }





 kfree(urb->transfer_buffer);
}
