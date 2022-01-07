
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;


 int usb_kill_urb (struct urb*) ;

__attribute__((used)) static void usbdux_unlink_urbs(struct urb **urbs, int num_urbs)
{
 int i;

 for (i = 0; i < num_urbs; i++)
  usb_kill_urb(urbs[i]);
}
