
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer {int dummy; } ;
typedef enum hrtimer_restart { ____Placeholder_hrtimer_restart } hrtimer_restart ;


 int HRTIMER_RESTART ;
 int TICK_NSEC ;
 int get_irq_regs () ;
 int hrtimer_forward_now (struct hrtimer*,int ) ;
 int ns_to_ktime (int ) ;
 int oprofile_add_sample (int ,int ) ;

__attribute__((used)) static enum hrtimer_restart oprofile_hrtimer_notify(struct hrtimer *hrtimer)
{
 oprofile_add_sample(get_irq_regs(), 0);
 hrtimer_forward_now(hrtimer, ns_to_ktime(TICK_NSEC));
 return HRTIMER_RESTART;
}
