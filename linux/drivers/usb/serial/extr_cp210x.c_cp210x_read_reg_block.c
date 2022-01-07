
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_serial_port {int dev; struct usb_serial* serial; } ;
struct usb_serial {int dev; } ;
struct cp210x_port_private {int bInterfaceNumber; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int REQTYPE_INTERFACE_TO_HOST ;
 int USB_CTRL_SET_TIMEOUT ;
 int dev_err (int *,char*,int ,int,int) ;
 int kfree (void*) ;
 void* kmalloc (int,int ) ;
 int memcpy (void*,void*,int) ;
 int memset (void*,int ,int) ;
 int usb_control_msg (int ,int ,int ,int ,int ,int ,void*,int,int ) ;
 struct cp210x_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int cp210x_read_reg_block(struct usb_serial_port *port, u8 req,
  void *buf, int bufsize)
{
 struct usb_serial *serial = port->serial;
 struct cp210x_port_private *port_priv = usb_get_serial_port_data(port);
 void *dmabuf;
 int result;

 dmabuf = kmalloc(bufsize, GFP_KERNEL);
 if (!dmabuf) {




  memset(buf, 0, bufsize);
  return -ENOMEM;
 }

 result = usb_control_msg(serial->dev, usb_rcvctrlpipe(serial->dev, 0),
   req, REQTYPE_INTERFACE_TO_HOST, 0,
   port_priv->bInterfaceNumber, dmabuf, bufsize,
   USB_CTRL_SET_TIMEOUT);
 if (result == bufsize) {
  memcpy(buf, dmabuf, bufsize);
  result = 0;
 } else {
  dev_err(&port->dev, "failed get req 0x%x size %d status: %d\n",
    req, bufsize, result);
  if (result >= 0)
   result = -EIO;





  memset(buf, 0, bufsize);
 }

 kfree(dmabuf);

 return result;
}
