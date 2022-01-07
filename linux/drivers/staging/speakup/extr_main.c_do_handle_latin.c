
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_char ;
struct vc_data {int dummy; } ;
struct TYPE_2__ {int spinlock; } ;


 scalar_t__ MINECHOCHAR ;
 int speak_char (scalar_t__) ;
 TYPE_1__ speakup_info ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int spk_key_echo ;
 scalar_t__ spk_keydown ;
 scalar_t__ spk_killed ;
 scalar_t__ spk_lastkey ;
 int spk_parked ;
 int spk_shut_up ;
 int synth ;

__attribute__((used)) static void do_handle_latin(struct vc_data *vc, u_char value, char up_flag)
{
 unsigned long flags;

 spin_lock_irqsave(&speakup_info.spinlock, flags);
 if (up_flag) {
  spk_lastkey = 0;
  spk_keydown = 0;
  spin_unlock_irqrestore(&speakup_info.spinlock, flags);
  return;
 }
 if (!synth || spk_killed) {
  spin_unlock_irqrestore(&speakup_info.spinlock, flags);
  return;
 }
 spk_shut_up &= 0xfe;
 spk_lastkey = value;
 spk_keydown++;
 spk_parked &= 0xfe;
 if (spk_key_echo == 2 && value >= MINECHOCHAR)
  speak_char(value);
 spin_unlock_irqrestore(&speakup_info.spinlock, flags);
}
