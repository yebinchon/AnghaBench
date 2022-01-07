
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget_driver {scalar_t__ max_speed; int setup; } ;
struct usb_gadget {int dummy; } ;
struct r8a66597 {int old_vbus; int timer; int scount; struct usb_gadget_driver* driver; } ;


 int EINVAL ;
 int ENODEV ;
 int INTENB0 ;
 int INTSTS0 ;
 int R8A66597_MAX_SAMPLING ;
 scalar_t__ USB_SPEED_HIGH ;
 int VBSE ;
 int VBSTS ;
 struct r8a66597* gadget_to_r8a66597 (struct usb_gadget*) ;
 int init_controller (struct r8a66597*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int r8a66597_bset (struct r8a66597*,int ,int ) ;
 int r8a66597_read (struct r8a66597*,int ) ;
 int r8a66597_start_xclock (struct r8a66597*) ;

__attribute__((used)) static int r8a66597_start(struct usb_gadget *gadget,
  struct usb_gadget_driver *driver)
{
 struct r8a66597 *r8a66597 = gadget_to_r8a66597(gadget);

 if (!driver
   || driver->max_speed < USB_SPEED_HIGH
   || !driver->setup)
  return -EINVAL;
 if (!r8a66597)
  return -ENODEV;


 r8a66597->driver = driver;

 init_controller(r8a66597);
 r8a66597_bset(r8a66597, VBSE, INTENB0);
 if (r8a66597_read(r8a66597, INTSTS0) & VBSTS) {
  r8a66597_start_xclock(r8a66597);

  r8a66597->old_vbus = r8a66597_read(r8a66597,
      INTSTS0) & VBSTS;
  r8a66597->scount = R8A66597_MAX_SAMPLING;
  mod_timer(&r8a66597->timer, jiffies + msecs_to_jiffies(50));
 }

 return 0;
}
