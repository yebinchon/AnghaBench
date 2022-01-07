
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int value; } ;
struct TYPE_5__ {TYPE_1__ n; } ;
struct var_t {TYPE_2__ u; } ;
struct TYPE_6__ {int alive; } ;


 int TRIGGER ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 struct var_t* spk_get_var (int ) ;
 TYPE_3__* synth ;
 int synth_buffer_clear () ;
 int thread_timer ;
 int timer_pending (int *) ;

void synth_start(void)
{
 struct var_t *trigger_time;

 if (!synth->alive) {
  synth_buffer_clear();
  return;
 }
 trigger_time = spk_get_var(TRIGGER);
 if (!timer_pending(&thread_timer))
  mod_timer(&thread_timer, jiffies +
   msecs_to_jiffies(trigger_time->u.n.value));
}
