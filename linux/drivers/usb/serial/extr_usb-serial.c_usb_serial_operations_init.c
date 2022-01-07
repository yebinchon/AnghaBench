
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_driver {scalar_t__ tx_empty; } ;


 int chars_in_buffer ;
 int close ;
 int open ;
 int prepare_write_buffer ;
 int process_read_urb ;
 int read_bulk_callback ;
 int set_to_generic_if_null (struct usb_serial_driver*,int ) ;
 int wait_until_sent ;
 int write ;
 int write_bulk_callback ;
 int write_room ;

__attribute__((used)) static void usb_serial_operations_init(struct usb_serial_driver *device)
{
 set_to_generic_if_null(device, open);
 set_to_generic_if_null(device, write);
 set_to_generic_if_null(device, close);
 set_to_generic_if_null(device, write_room);
 set_to_generic_if_null(device, chars_in_buffer);
 if (device->tx_empty)
  set_to_generic_if_null(device, wait_until_sent);
 set_to_generic_if_null(device, read_bulk_callback);
 set_to_generic_if_null(device, write_bulk_callback);
 set_to_generic_if_null(device, process_read_urb);
 set_to_generic_if_null(device, prepare_write_buffer);
}
