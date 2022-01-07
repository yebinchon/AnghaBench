
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dev; } ;
struct ftdi_private {scalar_t__ chip_type; } ;


 scalar_t__ FT2232C ;
 scalar_t__ FT2232H ;
 scalar_t__ FT232BM ;
 scalar_t__ FT232H ;
 scalar_t__ FT232RL ;
 scalar_t__ FT4232H ;
 scalar_t__ FTX ;
 scalar_t__ SIO ;
 int dev_attr_event_char ;
 int dev_attr_latency_timer ;
 int device_remove_file (int *,int *) ;
 struct ftdi_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void remove_sysfs_attrs(struct usb_serial_port *port)
{
 struct ftdi_private *priv = usb_get_serial_port_data(port);


 if (priv->chip_type != SIO) {
  device_remove_file(&port->dev, &dev_attr_event_char);
  if (priv->chip_type == FT232BM ||
      priv->chip_type == FT2232C ||
      priv->chip_type == FT232RL ||
      priv->chip_type == FT2232H ||
      priv->chip_type == FT4232H ||
      priv->chip_type == FT232H ||
      priv->chip_type == FTX) {
   device_remove_file(&port->dev, &dev_attr_latency_timer);
  }
 }

}
