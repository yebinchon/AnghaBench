
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bleep {scalar_t__ jiffies; scalar_t__ freq; scalar_t__ active; } ;
struct TYPE_5__ {int spinlock; scalar_t__ flushing; } ;
struct TYPE_4__ {int (* catch_up ) (TYPE_1__*) ;scalar_t__ alive; } ;


 int DEFINE_WAIT (int ) ;
 int TASK_INTERRUPTIBLE ;
 int finish_wait (int *,int *) ;
 int kd_mksound (scalar_t__,scalar_t__) ;
 scalar_t__ kthread_should_stop () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 int speakup_event ;
 TYPE_3__ speakup_info ;
 int speakup_start_ttys () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int spk_mutex ;
 struct bleep spk_unprocessed_sound ;
 int stub1 (TYPE_1__*) ;
 TYPE_1__* synth ;
 int synth_buffer_empty () ;
 int wait ;

int speakup_thread(void *data)
{
 unsigned long flags;
 int should_break;
 struct bleep our_sound;

 our_sound.active = 0;
 our_sound.freq = 0;
 our_sound.jiffies = 0;

 mutex_lock(&spk_mutex);
 while (1) {
  DEFINE_WAIT(wait);

  while (1) {
   spin_lock_irqsave(&speakup_info.spinlock, flags);
   our_sound = spk_unprocessed_sound;
   spk_unprocessed_sound.active = 0;
   prepare_to_wait(&speakup_event, &wait,
     TASK_INTERRUPTIBLE);
   should_break = kthread_should_stop() ||
    our_sound.active ||
    (synth && synth->catch_up && synth->alive &&
     (speakup_info.flushing ||
     !synth_buffer_empty()));
   spin_unlock_irqrestore(&speakup_info.spinlock, flags);
   if (should_break)
    break;
   mutex_unlock(&spk_mutex);
   schedule();
   mutex_lock(&spk_mutex);
  }
  finish_wait(&speakup_event, &wait);
  if (kthread_should_stop())
   break;

  if (our_sound.active)
   kd_mksound(our_sound.freq, our_sound.jiffies);
  if (synth && synth->catch_up && synth->alive) {




   synth->catch_up(synth);
  }

  speakup_start_ttys();
 }
 mutex_unlock(&spk_mutex);
 return 0;
}
