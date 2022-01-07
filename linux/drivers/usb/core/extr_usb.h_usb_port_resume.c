
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
typedef int pm_message_t ;



__attribute__((used)) static inline int usb_port_resume(struct usb_device *udev, pm_message_t msg)
{
 return 0;
}
