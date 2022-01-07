
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void (* function ) (struct timer_list*) ;scalar_t__ expires; } ;


 int add_timer (TYPE_1__*) ;
 int del_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 TYPE_1__ sclp_request_timer ;

__attribute__((used)) static inline void
__sclp_set_request_timer(unsigned long time, void (*cb)(struct timer_list *))
{
 del_timer(&sclp_request_timer);
 sclp_request_timer.function = cb;
 sclp_request_timer.expires = jiffies + time;
 add_timer(&sclp_request_timer);
}
