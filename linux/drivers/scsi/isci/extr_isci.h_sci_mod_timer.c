
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sci_timer {int timer; scalar_t__ cancel; } ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (unsigned long) ;

__attribute__((used)) static inline void sci_mod_timer(struct sci_timer *tmr, unsigned long msec)
{
 tmr->cancel = 0;
 mod_timer(&tmr->timer, jiffies + msecs_to_jiffies(msec));
}
