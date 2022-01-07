
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char u_char ;
struct TYPE_4__ {int value; } ;
struct TYPE_5__ {TYPE_1__ n; } ;
struct var_t {TYPE_2__ u; } ;
struct spk_synth {int (* flush ) (struct spk_synth*) ;} ;
struct TYPE_6__ {int spinlock; scalar_t__ flushing; } ;


 int DELAY ;
 int JIFFY ;
 char PROCSPEECH ;
 char SPACE ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int jiffies ;
 int kthread_should_stop () ;
 int msecs_to_jiffies (int) ;
 int schedule_timeout (int ) ;
 int set_current_state (int ) ;
 TYPE_3__ speakup_info ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct var_t* spk_get_var (int ) ;
 int spk_out (char) ;
 int stub1 (struct spk_synth*) ;
 scalar_t__ synth_buffer_empty () ;
 char synth_buffer_getc () ;
 int synth_buffer_skip_nonlatin1 () ;
 scalar_t__ synth_full () ;
 scalar_t__ time_after_eq (int,unsigned long) ;

__attribute__((used)) static void do_catch_up(struct spk_synth *synth)
{
 u_char ch;
 unsigned long flags;
 unsigned long jiff_max;
 struct var_t *jiffy_delta;
 struct var_t *delay_time;
 int jiffy_delta_val;
 int delay_time_val;

 jiffy_delta = spk_get_var(JIFFY);
 delay_time = spk_get_var(DELAY);
 spin_lock_irqsave(&speakup_info.spinlock, flags);
 jiffy_delta_val = jiffy_delta->u.n.value;
 spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 jiff_max = jiffies + jiffy_delta_val;
 while (!kthread_should_stop()) {
  spin_lock_irqsave(&speakup_info.spinlock, flags);
  if (speakup_info.flushing) {
   speakup_info.flushing = 0;
   spin_unlock_irqrestore(&speakup_info.spinlock, flags);
   synth->flush(synth);
   continue;
  }
  synth_buffer_skip_nonlatin1();
  if (synth_buffer_empty()) {
   spin_unlock_irqrestore(&speakup_info.spinlock, flags);
   break;
  }
  set_current_state(TASK_INTERRUPTIBLE);
  delay_time_val = delay_time->u.n.value;
  spin_unlock_irqrestore(&speakup_info.spinlock, flags);
  if (synth_full()) {
   schedule_timeout(msecs_to_jiffies(delay_time_val));
   continue;
  }
  set_current_state(TASK_RUNNING);
  spin_lock_irqsave(&speakup_info.spinlock, flags);
  ch = synth_buffer_getc();
  spin_unlock_irqrestore(&speakup_info.spinlock, flags);
  if (ch == '\n')
   ch = PROCSPEECH;
  spk_out(ch);
  if (time_after_eq(jiffies, jiff_max) && (ch == SPACE)) {
   spk_out(PROCSPEECH);
   spin_lock_irqsave(&speakup_info.spinlock, flags);
   delay_time_val = delay_time->u.n.value;
   jiffy_delta_val = jiffy_delta->u.n.value;
   spin_unlock_irqrestore(&speakup_info.spinlock, flags);
   schedule_timeout(msecs_to_jiffies(delay_time_val));
   jiff_max = jiffies + jiffy_delta_val;
  }
 }
 spk_out(PROCSPEECH);
}
