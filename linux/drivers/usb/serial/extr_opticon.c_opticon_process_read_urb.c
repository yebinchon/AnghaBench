
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dev; } ;
struct urb {unsigned char* transfer_buffer; int actual_length; struct usb_serial_port* context; } ;


 int dev_dbg (int *,char*,unsigned char const,...) ;
 int opticon_process_data_packet (struct usb_serial_port*,unsigned char const*,size_t) ;
 int opticon_process_status_packet (struct usb_serial_port*,unsigned char const*,size_t) ;

__attribute__((used)) static void opticon_process_read_urb(struct urb *urb)
{
 struct usb_serial_port *port = urb->context;
 const unsigned char *hdr = urb->transfer_buffer;
 const unsigned char *data = hdr + 2;
 size_t data_len = urb->actual_length - 2;

 if (urb->actual_length <= 2) {
  dev_dbg(&port->dev, "malformed packet received: %d bytes\n",
       urb->actual_length);
  return;
 }
 if ((hdr[0] == 0x00) && (hdr[1] == 0x00)) {
  opticon_process_data_packet(port, data, data_len);
 } else if ((hdr[0] == 0x00) && (hdr[1] == 0x01)) {
  opticon_process_status_packet(port, data, data_len);
 } else {
  dev_dbg(&port->dev, "unknown packet received: %02x %02x\n",
       hdr[0], hdr[1]);
 }
}
