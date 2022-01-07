
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;



__attribute__((used)) static void qt2_process_xmit_empty(struct usb_serial_port *port,
       unsigned char *ch)
{
 int bytes_written;

 bytes_written = (int)(*ch) + (int)(*(ch + 1) << 4);
}
