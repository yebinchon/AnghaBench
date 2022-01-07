
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_serial_port {int dummy; } ;


 int cp210x_get_tx_queue_byte_count (struct usb_serial_port*,int *) ;

__attribute__((used)) static bool cp210x_tx_empty(struct usb_serial_port *port)
{
 int err;
 u32 count;

 err = cp210x_get_tx_queue_byte_count(port, &count);
 if (err)
  return 1;

 return !count;
}
