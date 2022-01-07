
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct cxacru_timer {int urb; } ;


 struct cxacru_timer* from_timer (int ,struct timer_list*,int ) ;
 struct cxacru_timer* timer ;
 int usb_unlink_urb (int ) ;

__attribute__((used)) static void cxacru_timeout_kill(struct timer_list *t)
{
 struct cxacru_timer *timer = from_timer(timer, t, timer);

 usb_unlink_urb(timer->urb);
}
