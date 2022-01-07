
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wdm_device {int response; int validity; int command; } ;


 int usb_kill_urb (int ) ;

__attribute__((used)) static void kill_urbs(struct wdm_device *desc)
{

 usb_kill_urb(desc->command);
 usb_kill_urb(desc->validity);
 usb_kill_urb(desc->response);
}
