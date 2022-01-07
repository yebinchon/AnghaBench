
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dev; struct usb_serial* serial; } ;
struct usb_serial {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;


 int BELKIN_SA_SET_BREAK_REQUEST ;
 scalar_t__ BSA_USB_CMD (int ,int) ;
 int dev_err (int *,char*,int) ;

__attribute__((used)) static void belkin_sa_break_ctl(struct tty_struct *tty, int break_state)
{
 struct usb_serial_port *port = tty->driver_data;
 struct usb_serial *serial = port->serial;

 if (BSA_USB_CMD(BELKIN_SA_SET_BREAK_REQUEST, break_state ? 1 : 0) < 0)
  dev_err(&port->dev, "Set break_ctl %d\n", break_state);
}
