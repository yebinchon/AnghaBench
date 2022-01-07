
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sci_timer {int timer; scalar_t__ cancel; } ;


 int timer_setup (int *,void (*) (struct timer_list*),int ) ;

__attribute__((used)) static inline
void sci_init_timer(struct sci_timer *tmr, void (*fn)(struct timer_list *t))
{
 tmr->cancel = 0;
 timer_setup(&tmr->timer, fn, 0);
}
