
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int blank_timer_expired ;
 int console_work ;
 int schedule_work (int *) ;

__attribute__((used)) static void blank_screen_t(struct timer_list *unused)
{
 blank_timer_expired = 1;
 schedule_work(&console_work);
}
