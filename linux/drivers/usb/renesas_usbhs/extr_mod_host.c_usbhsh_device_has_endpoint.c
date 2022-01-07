
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhsh_device {int ep_list_head; } ;


 int list_empty (int *) ;

__attribute__((used)) static int usbhsh_device_has_endpoint(struct usbhsh_device *udev)
{
 return !list_empty(&udev->ep_list_head);
}
