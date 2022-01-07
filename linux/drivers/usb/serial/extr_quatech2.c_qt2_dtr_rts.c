
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_port {int dev; TYPE_1__* serial; } ;
struct usb_device {int dummy; } ;
struct qt2_port_private {int device_port; } ;
struct TYPE_2__ {struct usb_device* dev; } ;


 int TIOCM_DTR ;
 int TIOCM_RTS ;
 int UART_MCR ;
 int dev_warn (int *,char*) ;
 scalar_t__ qt2_setregister (struct usb_device*,int ,int ,int ) ;
 int update_mctrl (struct qt2_port_private*,int,int) ;
 struct qt2_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void qt2_dtr_rts(struct usb_serial_port *port, int on)
{
 struct usb_device *dev = port->serial->dev;
 struct qt2_port_private *port_priv = usb_get_serial_port_data(port);


 if (!on) {
  if (qt2_setregister(dev, port_priv->device_port,
        UART_MCR, 0) < 0)
   dev_warn(&port->dev, "error from flowcontrol urb\n");
 }

 if (on)
  update_mctrl(port_priv, TIOCM_DTR | TIOCM_RTS, 0);
 else
  update_mctrl(port_priv, 0, TIOCM_DTR | TIOCM_RTS);
}
