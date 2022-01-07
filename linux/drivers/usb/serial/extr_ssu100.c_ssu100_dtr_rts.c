
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_port {int dev; TYPE_1__* serial; } ;
struct usb_device {int dummy; } ;
struct TYPE_2__ {struct usb_device* dev; } ;


 int TIOCM_DTR ;
 int TIOCM_RTS ;
 int UART_MCR ;
 int clear_mctrl (struct usb_device*,int) ;
 int dev_err (int *,char*) ;
 int set_mctrl (struct usb_device*,int) ;
 scalar_t__ ssu100_setregister (struct usb_device*,int ,int ,int ) ;

__attribute__((used)) static void ssu100_dtr_rts(struct usb_serial_port *port, int on)
{
 struct usb_device *dev = port->serial->dev;


 if (!on) {
  if (ssu100_setregister(dev, 0, UART_MCR, 0) < 0)
   dev_err(&port->dev, "error from flowcontrol urb\n");
 }

 if (on)
  set_mctrl(dev, TIOCM_DTR | TIOCM_RTS);
 else
  clear_mctrl(dev, TIOCM_DTR | TIOCM_RTS);
}
