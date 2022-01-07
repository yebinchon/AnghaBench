
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_serial_port {struct usb_serial* serial; } ;
struct usb_serial {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int *,int,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int send_control_msg(struct usb_serial_port *port, u8 requesttype,
    u8 val)
{
 struct usb_serial *serial = port->serial;
 int retval;
 u8 *buffer;

 buffer = kzalloc(1, GFP_KERNEL);
 if (!buffer)
  return -ENOMEM;

 buffer[0] = val;


 retval = usb_control_msg(serial->dev, usb_sndctrlpipe(serial->dev, 0),
    requesttype,
    USB_DIR_OUT|USB_TYPE_VENDOR|USB_RECIP_INTERFACE,
    0, 0, buffer, 1, 0);
 kfree(buffer);

 if (retval < 0)
  return retval;

 return 0;
}
