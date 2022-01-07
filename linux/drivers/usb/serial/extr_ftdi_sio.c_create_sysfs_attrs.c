
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dev; } ;
struct ftdi_private {size_t chip_type; } ;


 size_t FT2232C ;
 size_t FT2232H ;
 size_t FT232BM ;
 size_t FT232H ;
 size_t FT232RL ;
 size_t FT4232H ;
 size_t FTX ;
 size_t SIO ;
 int dev_attr_event_char ;
 int dev_attr_latency_timer ;
 int dev_dbg (int *,char*,int ) ;
 int device_create_file (int *,int *) ;
 int * ftdi_chip_name ;
 struct ftdi_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int create_sysfs_attrs(struct usb_serial_port *port)
{
 struct ftdi_private *priv = usb_get_serial_port_data(port);
 int retval = 0;



 if (priv->chip_type != SIO) {
  dev_dbg(&port->dev, "sysfs attributes for %s\n", ftdi_chip_name[priv->chip_type]);
  retval = device_create_file(&port->dev, &dev_attr_event_char);
  if ((!retval) &&
      (priv->chip_type == FT232BM ||
       priv->chip_type == FT2232C ||
       priv->chip_type == FT232RL ||
       priv->chip_type == FT2232H ||
       priv->chip_type == FT4232H ||
       priv->chip_type == FT232H ||
       priv->chip_type == FTX)) {
   retval = device_create_file(&port->dev,
          &dev_attr_latency_timer);
  }
 }
 return retval;
}
