
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_data {size_t vc_num; scalar_t__ vc_mode; } ;
struct TYPE_2__ {int spinlock; } ;


 scalar_t__ KD_GRAPHICS ;
 int * speakup_console ;
 int speakup_date (struct vc_data*) ;
 TYPE_1__ speakup_info ;
 int spin_trylock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ spk_parked ;
 int spk_paused ;
 scalar_t__* spk_str_pause ;
 int synth_printf (char*,scalar_t__*) ;

__attribute__((used)) static void speakup_con_update(struct vc_data *vc)
{
 unsigned long flags;

 if (!speakup_console[vc->vc_num] || spk_parked)
  return;
 if (!spin_trylock_irqsave(&speakup_info.spinlock, flags))

  return;
 speakup_date(vc);
 if (vc->vc_mode == KD_GRAPHICS && !spk_paused && spk_str_pause[0]) {
  synth_printf("%s", spk_str_pause);
  spk_paused = 1;
 }
 spin_unlock_irqrestore(&speakup_info.spinlock, flags);
}
