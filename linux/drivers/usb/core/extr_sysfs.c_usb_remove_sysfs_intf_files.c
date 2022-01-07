
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {scalar_t__ sysfs_files_created; int dev; } ;


 int dev_attr_interface ;
 int device_remove_file (int *,int *) ;

void usb_remove_sysfs_intf_files(struct usb_interface *intf)
{
 if (!intf->sysfs_files_created)
  return;

 device_remove_file(&intf->dev, &dev_attr_interface);
 intf->sysfs_files_created = 0;
}
