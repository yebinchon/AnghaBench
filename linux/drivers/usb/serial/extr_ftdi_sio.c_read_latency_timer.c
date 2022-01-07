
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dev; } ;
struct ftdi_private {scalar_t__ chip_type; int latency; } ;


 int EINVAL ;
 scalar_t__ FT8U232AM ;
 scalar_t__ SIO ;
 int _read_latency_timer (struct usb_serial_port*) ;
 int dev_err (int *,char*,int) ;
 struct ftdi_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int read_latency_timer(struct usb_serial_port *port)
{
 struct ftdi_private *priv = usb_get_serial_port_data(port);
 int rv;

 if (priv->chip_type == SIO || priv->chip_type == FT8U232AM)
  return -EINVAL;

 rv = _read_latency_timer(port);
 if (rv < 0) {
  dev_err(&port->dev, "Unable to read latency timer: %i\n", rv);
  return rv;
 }

 priv->latency = rv;

 return 0;
}
