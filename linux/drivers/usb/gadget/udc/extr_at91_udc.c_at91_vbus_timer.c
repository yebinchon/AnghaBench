
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct at91_udc {int vbus_timer_work; } ;


 struct at91_udc* from_timer (int ,struct timer_list*,int ) ;
 int schedule_work (int *) ;
 struct at91_udc* udc ;
 int vbus_timer ;

__attribute__((used)) static void at91_vbus_timer(struct timer_list *t)
{
 struct at91_udc *udc = from_timer(udc, t, vbus_timer);






 schedule_work(&udc->vbus_timer_work);
}
