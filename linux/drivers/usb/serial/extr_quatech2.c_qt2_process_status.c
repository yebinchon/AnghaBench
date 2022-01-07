
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;




 int qt2_update_lsr (struct usb_serial_port*,unsigned char*) ;
 int qt2_update_msr (struct usb_serial_port*,unsigned char*) ;

__attribute__((used)) static void qt2_process_status(struct usb_serial_port *port, unsigned char *ch)
{
 switch (*ch) {
 case 129:
  qt2_update_lsr(port, ch + 1);
  break;
 case 128:
  qt2_update_msr(port, ch + 1);
  break;
 }
}
