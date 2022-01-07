
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


 int EIO ;
 int ENOMEM ;
 int EPERM ;
 int GET_UART_STATUS ;
 int GET_UART_STATUS_MSR ;
 int GET_UART_STATUS_TYPE ;
 int GFP_KERNEL ;
 int SPCP825_QUIRK_NO_UART_STATUS ;
 int dev_dbg (int *,char*,int,int ) ;
 int dev_err (int *,char*,int) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int usb_control_msg (struct usb_device*,int ,int ,int ,int ,int ,int *,int,int) ;
 struct spcp8x5_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int spcp8x5_get_msr(struct usb_serial_port *port, u8 *status)
{
 struct spcp8x5_private *priv = usb_get_serial_port_data(port);
 struct usb_device *dev = port->serial->dev;
 u8 *buf;
 int ret;

 if (priv->quirks & SPCP825_QUIRK_NO_UART_STATUS)
  return -EPERM;

 buf = kzalloc(1, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 ret = usb_control_msg(dev, usb_rcvctrlpipe(dev, 0),
         GET_UART_STATUS, GET_UART_STATUS_TYPE,
         0, GET_UART_STATUS_MSR, buf, 1, 100);
 if (ret < 1) {
  dev_err(&port->dev, "failed to get modem status: %d\n", ret);
  if (ret >= 0)
   ret = -EIO;
  goto out;
 }

 dev_dbg(&port->dev, "0xc0:0x22:0:6  %d - 0x02%x\n", ret, *buf);
 *status = *buf;
 ret = 0;
out:
 kfree(buf);

 return ret;
}
