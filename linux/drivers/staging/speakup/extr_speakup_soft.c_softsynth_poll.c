
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct poll_table_struct {int dummy; } ;
struct file {int dummy; } ;
typedef int __poll_t ;
struct TYPE_2__ {int spinlock; scalar_t__ flushing; } ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;
 int speakup_event ;
 TYPE_1__ speakup_info ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int synth_buffer_empty () ;
 int * synth_current () ;
 int synth_soft ;

__attribute__((used)) static __poll_t softsynth_poll(struct file *fp, struct poll_table_struct *wait)
{
 unsigned long flags;
 __poll_t ret = 0;

 poll_wait(fp, &speakup_event, wait);

 spin_lock_irqsave(&speakup_info.spinlock, flags);
 if (synth_current() == &synth_soft &&
     (!synth_buffer_empty() || speakup_info.flushing))
  ret = EPOLLIN | EPOLLRDNORM;
 spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 return ret;
}
