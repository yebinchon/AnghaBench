
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_serial_port {int dev; struct usb_serial* serial; } ;
struct usb_serial {int dev; } ;
struct cp210x_port_private {int bInterfaceNumber; } ;


 int REQTYPE_HOST_TO_INTERFACE ;
 int USB_CTRL_SET_TIMEOUT ;
 int dev_err (int *,char*,int ,int) ;
 int usb_control_msg (int ,int ,int ,int ,int ,int ,int *,int ,int ) ;
 struct cp210x_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int cp210x_write_u16_reg(struct usb_serial_port *port, u8 req, u16 val)
{
 struct usb_serial *serial = port->serial;
 struct cp210x_port_private *port_priv = usb_get_serial_port_data(port);
 int result;

 result = usb_control_msg(serial->dev, usb_sndctrlpipe(serial->dev, 0),
   req, REQTYPE_HOST_TO_INTERFACE, val,
   port_priv->bInterfaceNumber, ((void*)0), 0,
   USB_CTRL_SET_TIMEOUT);
 if (result < 0) {
  dev_err(&port->dev, "failed set request 0x%x status: %d\n",
    req, result);
 }

 return result;
}
