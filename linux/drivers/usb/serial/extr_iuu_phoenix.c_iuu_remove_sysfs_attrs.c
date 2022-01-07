
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dev; } ;


 int dev_attr_vcc_mode ;
 int device_remove_file (int *,int *) ;

__attribute__((used)) static int iuu_remove_sysfs_attrs(struct usb_serial_port *port)
{
 device_remove_file(&port->dev, &dev_attr_vcc_mode);
 return 0;
}
