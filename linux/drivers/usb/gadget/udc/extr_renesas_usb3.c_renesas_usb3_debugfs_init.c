
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3 {int dentry; } ;
struct device {int dummy; } ;


 int debugfs_create_dir (int ,int *) ;
 int debugfs_create_file (char*,int,int ,struct renesas_usb3*,int *) ;
 int dev_name (struct device*) ;
 int renesas_usb3_b_device_fops ;

__attribute__((used)) static void renesas_usb3_debugfs_init(struct renesas_usb3 *usb3,
          struct device *dev)
{
 usb3->dentry = debugfs_create_dir(dev_name(dev), ((void*)0));

 debugfs_create_file("b_device", 0644, usb3->dentry, usb3,
       &renesas_usb3_b_device_fops);
}
