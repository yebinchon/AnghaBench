
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int del_timer_sync (int *) ;
 int input_handler_for_each_handle (int *,unsigned int*,int ) ;
 scalar_t__ jiffies ;
 int kbd_handler ;
 int kd_mksound_timer ;
 int kd_sound_helper ;
 int mod_timer (int *,scalar_t__) ;

void kd_mksound(unsigned int hz, unsigned int ticks)
{
 del_timer_sync(&kd_mksound_timer);

 input_handler_for_each_handle(&kbd_handler, &hz, kd_sound_helper);

 if (hz && ticks)
  mod_timer(&kd_mksound_timer, jiffies + ticks);
}
