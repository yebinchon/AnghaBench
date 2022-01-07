
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct usb_serial_port {TYPE_1__* serial; } ;
struct tty_struct {int dummy; } ;
struct ftdi_private {scalar_t__ chip_type; int interface; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ FT2232C ;
 scalar_t__ FT2232H ;
 scalar_t__ FT232H ;
 scalar_t__ FT4232H ;
 int FTDI_SIO_SET_BAUDRATE_REQUEST ;
 int FTDI_SIO_SET_BAUDRATE_REQUEST_TYPE ;
 int WDR_SHORT_TIMEOUT ;
 int get_ftdi_divisor (struct tty_struct*,struct usb_serial_port*) ;
 int usb_control_msg (int ,int ,int ,int ,int,int,int *,int ,int ) ;
 struct ftdi_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int change_speed(struct tty_struct *tty, struct usb_serial_port *port)
{
 struct ftdi_private *priv = usb_get_serial_port_data(port);
 u16 value;
 u16 index;
 u32 index_value;
 int rv;

 index_value = get_ftdi_divisor(tty, port);
 value = (u16)index_value;
 index = (u16)(index_value >> 16);
 if ((priv->chip_type == FT2232C) || (priv->chip_type == FT2232H) ||
  (priv->chip_type == FT4232H) || (priv->chip_type == FT232H)) {


  index = (u16)((index << 8) | priv->interface);
 }

 rv = usb_control_msg(port->serial->dev,
       usb_sndctrlpipe(port->serial->dev, 0),
       FTDI_SIO_SET_BAUDRATE_REQUEST,
       FTDI_SIO_SET_BAUDRATE_REQUEST_TYPE,
       value, index,
       ((void*)0), 0, WDR_SHORT_TIMEOUT);
 return rv;
}
