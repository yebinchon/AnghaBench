
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct tty_struct {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int navman_write(struct tty_struct *tty, struct usb_serial_port *port,
   const unsigned char *buf, int count)
{



 return -EOPNOTSUPP;
}
