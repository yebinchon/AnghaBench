
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int * parent; } ;



__attribute__((used)) static inline int is_root_hub(struct usb_device *udev)
{
 return (udev->parent == ((void*)0));
}
