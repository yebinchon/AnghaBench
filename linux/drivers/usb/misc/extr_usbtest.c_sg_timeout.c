
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct sg_timeout {int req; } ;


 struct sg_timeout* from_timer (int ,struct timer_list*,int ) ;
 struct sg_timeout* timeout ;
 int timer ;
 int usb_sg_cancel (int ) ;

__attribute__((used)) static void sg_timeout(struct timer_list *t)
{
 struct sg_timeout *timeout = from_timer(timeout, t, timer);

 usb_sg_cancel(timeout->req);
}
