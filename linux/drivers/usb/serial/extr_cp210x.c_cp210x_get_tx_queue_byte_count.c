
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_serial_port {int dev; struct usb_serial* serial; } ;
struct usb_serial {int dev; } ;
struct cp210x_port_private {int bInterfaceNumber; } ;
struct cp210x_comm_status {int ulAmountInOutQueue; } ;


 int CP210X_GET_COMM_STATUS ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int REQTYPE_INTERFACE_TO_HOST ;
 int USB_CTRL_GET_TIMEOUT ;
 int dev_err (int *,char*,int) ;
 int kfree (struct cp210x_comm_status*) ;
 struct cp210x_comm_status* kmalloc (int,int ) ;
 int le32_to_cpu (int ) ;
 int usb_control_msg (int ,int ,int ,int ,int ,int ,struct cp210x_comm_status*,int,int ) ;
 struct cp210x_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int cp210x_get_tx_queue_byte_count(struct usb_serial_port *port,
  u32 *count)
{
 struct usb_serial *serial = port->serial;
 struct cp210x_port_private *port_priv = usb_get_serial_port_data(port);
 struct cp210x_comm_status *sts;
 int result;

 sts = kmalloc(sizeof(*sts), GFP_KERNEL);
 if (!sts)
  return -ENOMEM;

 result = usb_control_msg(serial->dev, usb_rcvctrlpipe(serial->dev, 0),
   CP210X_GET_COMM_STATUS, REQTYPE_INTERFACE_TO_HOST,
   0, port_priv->bInterfaceNumber, sts, sizeof(*sts),
   USB_CTRL_GET_TIMEOUT);
 if (result == sizeof(*sts)) {
  *count = le32_to_cpu(sts->ulAmountInOutQueue);
  result = 0;
 } else {
  dev_err(&port->dev, "failed to get comm status: %d\n", result);
  if (result >= 0)
   result = -EIO;
 }

 kfree(sts);

 return result;
}
