
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {scalar_t__ expires; } ;


 int HZ ;
 int add_timer (struct timer_list*) ;
 int del_timer (struct timer_list*) ;
 scalar_t__ jiffies ;

__attribute__((used)) static void
ahd_timer_reset(struct timer_list *timer, int usec)
{
 del_timer(timer);
 timer->expires = jiffies + (usec * HZ)/1000000;
 add_timer(timer);
}
