
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_port {TYPE_1__* serial; } ;
struct usb_device {int dummy; } ;
struct ftdi_private {int interface; } ;
struct TYPE_2__ {struct usb_device* dev; } ;


 int EIO ;
 int ENOMEM ;
 int FTDI_SIO_GET_LATENCY_TIMER_REQUEST ;
 int FTDI_SIO_GET_LATENCY_TIMER_REQUEST_TYPE ;
 int GFP_KERNEL ;
 int WDR_TIMEOUT ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 int usb_control_msg (struct usb_device*,int ,int ,int ,int ,int ,unsigned char*,int,int ) ;
 struct ftdi_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int _read_latency_timer(struct usb_serial_port *port)
{
 struct ftdi_private *priv = usb_get_serial_port_data(port);
 struct usb_device *udev = port->serial->dev;
 unsigned char *buf;
 int rv;

 buf = kmalloc(1, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 rv = usb_control_msg(udev,
        usb_rcvctrlpipe(udev, 0),
        FTDI_SIO_GET_LATENCY_TIMER_REQUEST,
        FTDI_SIO_GET_LATENCY_TIMER_REQUEST_TYPE,
        0, priv->interface,
        buf, 1, WDR_TIMEOUT);
 if (rv < 1) {
  if (rv >= 0)
   rv = -EIO;
 } else {
  rv = buf[0];
 }

 kfree(buf);

 return rv;
}
