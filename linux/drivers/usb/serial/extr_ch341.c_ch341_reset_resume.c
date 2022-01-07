
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_port {int dev; TYPE_1__* serial; int interrupt_in_urb; int port; } ;
struct usb_serial {int dev; struct usb_serial_port** port; } ;
struct ch341_private {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int GFP_NOIO ;
 int ch341_configure (int ,struct ch341_private*) ;
 int ch341_get_status (int ,struct ch341_private*) ;
 int dev_err (int *,char*,int) ;
 scalar_t__ tty_port_initialized (int *) ;
 struct ch341_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_serial_generic_resume (struct usb_serial*) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int ch341_reset_resume(struct usb_serial *serial)
{
 struct usb_serial_port *port = serial->port[0];
 struct ch341_private *priv = usb_get_serial_port_data(port);
 int ret;


 ch341_configure(serial->dev, priv);

 if (tty_port_initialized(&port->port)) {
  ret = usb_submit_urb(port->interrupt_in_urb, GFP_NOIO);
  if (ret) {
   dev_err(&port->dev, "failed to submit interrupt urb: %d\n",
    ret);
   return ret;
  }

  ret = ch341_get_status(port->serial->dev, priv);
  if (ret < 0) {
   dev_err(&port->dev, "failed to read modem status: %d\n",
    ret);
  }
 }

 return usb_serial_generic_resume(serial);
}
