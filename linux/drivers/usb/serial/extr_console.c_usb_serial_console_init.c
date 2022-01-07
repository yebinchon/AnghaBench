
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_debug (char*) ;
 int register_console (int *) ;
 int usbcons ;

void usb_serial_console_init(int minor)
{
 if (minor == 0) {
  pr_debug("registering the USB serial console.\n");
  register_console(&usbcons);
 }
}
