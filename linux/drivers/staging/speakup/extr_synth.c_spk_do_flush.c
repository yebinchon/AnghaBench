
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flushing; } ;
struct TYPE_3__ {scalar_t__ alive; } ;


 int speakup_event ;
 TYPE_2__ speakup_info ;
 int speakup_task ;
 int spk_pitch_buff ;
 scalar_t__ spk_pitch_shift ;
 TYPE_1__* synth ;
 int synth_buffer_clear () ;
 int synth_printf (char*,int ) ;
 int wake_up_interruptible_all (int *) ;
 int wake_up_process (int ) ;

void spk_do_flush(void)
{
 if (!synth)
  return;

 speakup_info.flushing = 1;
 synth_buffer_clear();
 if (synth->alive) {
  if (spk_pitch_shift) {
   synth_printf("%s", spk_pitch_buff);
   spk_pitch_shift = 0;
  }
 }
 wake_up_interruptible_all(&speakup_event);
 wake_up_process(speakup_task);
}
