
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_data {size_t vc_num; } ;
struct TYPE_2__ {int spinlock; } ;


 size_t fg_console ;
 int is_cursor ;
 int say_char (struct vc_data*) ;
 int * speakup_console ;
 int speakup_date (struct vc_data*) ;
 TYPE_1__ speakup_info ;
 int spin_trylock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ spk_keydown ;
 int spk_parked ;
 scalar_t__ spk_shut_up ;
 int synth ;

__attribute__((used)) static void speakup_bs(struct vc_data *vc)
{
 unsigned long flags;

 if (!speakup_console[vc->vc_num])
  return;
 if (!spin_trylock_irqsave(&speakup_info.spinlock, flags))

  return;
 if (!spk_parked)
  speakup_date(vc);
 if (spk_shut_up || !synth) {
  spin_unlock_irqrestore(&speakup_info.spinlock, flags);
  return;
 }
 if (vc->vc_num == fg_console && spk_keydown) {
  spk_keydown = 0;
  if (!is_cursor)
   say_char(vc);
 }
 spin_unlock_irqrestore(&speakup_info.spinlock, flags);
}
