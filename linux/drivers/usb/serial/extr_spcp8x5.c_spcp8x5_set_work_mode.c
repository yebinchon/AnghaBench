
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct usb_serial_port {int dev; TYPE_1__* serial; } ;
struct usb_device {int dummy; } ;
struct spcp8x5_private {int quirks; } ;
struct TYPE_2__ {struct usb_device* dev; } ;


 int SET_WORKING_MODE ;
 int SET_WORKING_MODE_TYPE ;
 int SPCP825_QUIRK_NO_WORK_MODE ;
 int dev_dbg (int *,char*,int ,int ) ;
 int dev_err (int *,char*,int) ;
 int usb_control_msg (struct usb_device*,int ,int ,int ,int ,int ,int *,int ,int) ;
 struct spcp8x5_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static void spcp8x5_set_work_mode(struct usb_serial_port *port, u16 value,
         u16 index)
{
 struct spcp8x5_private *priv = usb_get_serial_port_data(port);
 struct usb_device *dev = port->serial->dev;
 int ret;

 if (priv->quirks & SPCP825_QUIRK_NO_WORK_MODE)
  return;

 ret = usb_control_msg(dev, usb_sndctrlpipe(dev, 0),
         SET_WORKING_MODE_TYPE, SET_WORKING_MODE,
         value, index, ((void*)0), 0, 100);
 dev_dbg(&port->dev, "value = %#x , index = %#x\n", value, index);
 if (ret < 0)
  dev_err(&port->dev, "failed to set work mode: %d\n", ret);
}
