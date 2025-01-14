
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct vc_data {scalar_t__ vc_num; int vc_x; scalar_t__ vc_y; } ;
struct TYPE_2__ {int spinlock; } ;


 scalar_t__ CT_Highlight ;
 int bleep (int) ;
 scalar_t__ cursor_track ;
 scalar_t__ fg_console ;
 scalar_t__ is_cursor ;
 scalar_t__ read_all_mode ;
 TYPE_1__ speakup_info ;
 int spin_trylock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int spk_bell_pos ;
 scalar_t__ spk_keydown ;
 scalar_t__ spk_shut_up ;
 int spkup_write (int *,int) ;
 int synth ;
 int update_color_buffer (struct vc_data*,int *,int) ;
 scalar_t__ win_bottom ;
 scalar_t__ win_enabled ;
 scalar_t__ win_left ;
 scalar_t__ win_right ;
 scalar_t__ win_top ;

__attribute__((used)) static void speakup_con_write(struct vc_data *vc, u16 *str, int len)
{
 unsigned long flags;

 if ((vc->vc_num != fg_console) || spk_shut_up || !synth)
  return;
 if (!spin_trylock_irqsave(&speakup_info.spinlock, flags))

  return;
 if (spk_bell_pos && spk_keydown && (vc->vc_x == spk_bell_pos - 1))
  bleep(3);
 if ((is_cursor) || (cursor_track == read_all_mode)) {
  if (cursor_track == CT_Highlight)
   update_color_buffer(vc, str, len);
  spin_unlock_irqrestore(&speakup_info.spinlock, flags);
  return;
 }
 if (win_enabled) {
  if (vc->vc_x >= win_left && vc->vc_x <= win_right &&
      vc->vc_y >= win_top && vc->vc_y <= win_bottom) {
   spin_unlock_irqrestore(&speakup_info.spinlock, flags);
   return;
  }
 }

 spkup_write(str, len);
 spin_unlock_irqrestore(&speakup_info.spinlock, flags);
}
