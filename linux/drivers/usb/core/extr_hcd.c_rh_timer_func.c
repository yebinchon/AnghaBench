
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct timer_list {int dummy; } ;


 struct usb_hcd* _hcd ;
 struct usb_hcd* from_timer (int ,struct timer_list*,int ) ;
 int rh_timer ;
 int usb_hcd_poll_rh_status (struct usb_hcd*) ;

__attribute__((used)) static void rh_timer_func (struct timer_list *t)
{
 struct usb_hcd *_hcd = from_timer(_hcd, t, rh_timer);

 usb_hcd_poll_rh_status(_hcd);
}
