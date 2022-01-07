
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_create_file (char*,int,int ,int *,int *) ;
 int usb_debug_root ;
 int usb_devices_root ;
 int usbfs_devices_fops ;

__attribute__((used)) static void usb_debugfs_init(void)
{
 usb_devices_root = debugfs_create_file("devices", 0444, usb_debug_root,
            ((void*)0), &usbfs_devices_fops);
}
