
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct usb_serial_port {int dev; TYPE_1__* serial; } ;
struct usb_device {int dummy; } ;
struct spcp8x5_private {int quirks; } ;
struct TYPE_2__ {struct usb_device* dev; } ;


 int EPERM ;
 int SET_UART_STATUS ;
 int SET_UART_STATUS_TYPE ;
 int SPCP825_QUIRK_NO_UART_STATUS ;
 int dev_err (int *,char*,int) ;
 int usb_control_msg (struct usb_device*,int ,int ,int ,int ,int,int *,int ,int) ;
 struct spcp8x5_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int spcp8x5_set_ctrl_line(struct usb_serial_port *port, u8 mcr)
{
 struct spcp8x5_private *priv = usb_get_serial_port_data(port);
 struct usb_device *dev = port->serial->dev;
 int retval;

 if (priv->quirks & SPCP825_QUIRK_NO_UART_STATUS)
  return -EPERM;

 retval = usb_control_msg(dev, usb_sndctrlpipe(dev, 0),
     SET_UART_STATUS_TYPE, SET_UART_STATUS,
     mcr, 0x04, ((void*)0), 0, 100);
 if (retval != 0) {
  dev_err(&port->dev, "failed to set control lines: %d\n",
        retval);
 }
 return retval;
}
