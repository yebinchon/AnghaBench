
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udc {int dummy; } ;


 int del_timer_sync (int *) ;
 int on_exit ;
 int on_pollstall_exit ;
 int stop_pollstall_timer ;
 int stop_timer ;
 scalar_t__ timer_pending (int *) ;
 int * udc ;
 int udc_pollstall_timer ;
 int udc_timer ;
 int wait_for_completion (int *) ;

void udc_remove(struct udc *dev)
{

 stop_timer++;
 if (timer_pending(&udc_timer))
  wait_for_completion(&on_exit);
 del_timer_sync(&udc_timer);

 stop_pollstall_timer++;
 if (timer_pending(&udc_pollstall_timer))
  wait_for_completion(&on_pollstall_exit);
 del_timer_sync(&udc_pollstall_timer);
 udc = ((void*)0);
}
