
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;


 int USB_SPEED_FULL ;
 int USB_SPEED_LOW ;

__attribute__((used)) static int is_fs_or_ls(enum usb_device_speed speed)
{
 return speed == USB_SPEED_FULL || speed == USB_SPEED_LOW;
}
