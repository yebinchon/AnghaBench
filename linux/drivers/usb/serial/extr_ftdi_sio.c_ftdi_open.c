
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_port {TYPE_1__* serial; } ;
struct usb_device {int dummy; } ;
struct tty_struct {int dummy; } ;
struct ftdi_private {int interface; } ;
struct TYPE_2__ {struct usb_device* dev; } ;


 int FTDI_SIO_RESET_REQUEST ;
 int FTDI_SIO_RESET_REQUEST_TYPE ;
 int FTDI_SIO_RESET_SIO ;
 int WDR_TIMEOUT ;
 int ftdi_set_termios (struct tty_struct*,struct usb_serial_port*,int *) ;
 int usb_control_msg (struct usb_device*,int ,int ,int ,int ,int ,int *,int ,int ) ;
 struct ftdi_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_serial_generic_open (struct tty_struct*,struct usb_serial_port*) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int ftdi_open(struct tty_struct *tty, struct usb_serial_port *port)
{
 struct usb_device *dev = port->serial->dev;
 struct ftdi_private *priv = usb_get_serial_port_data(port);



 usb_control_msg(dev, usb_sndctrlpipe(dev, 0),
   FTDI_SIO_RESET_REQUEST, FTDI_SIO_RESET_REQUEST_TYPE,
   FTDI_SIO_RESET_SIO,
   priv->interface, ((void*)0), 0, WDR_TIMEOUT);






 if (tty)
  ftdi_set_termios(tty, port, ((void*)0));

 return usb_serial_generic_open(tty, port);
}
