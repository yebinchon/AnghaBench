
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_char ;
struct vc_data {int dummy; } ;
struct TYPE_2__ {int spinlock; } ;


 int NOTIFY_OK ;
 int NOTIFY_STOP ;
 int cursor_timer ;
 scalar_t__ cursor_track ;
 int del_timer (int *) ;
 scalar_t__ read_all_mode ;
 TYPE_1__ speakup_info ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int spk_do_flush () ;
 int spk_parked ;
 int spk_shut_up ;
 int start_read_all_timer (struct vc_data*,scalar_t__) ;
 int synth ;

__attribute__((used)) static int pre_handle_cursor(struct vc_data *vc, u_char value, char up_flag)
{
 unsigned long flags;

 spin_lock_irqsave(&speakup_info.spinlock, flags);
 if (cursor_track == read_all_mode) {
  spk_parked &= 0xfe;
  if (!synth || up_flag || spk_shut_up) {
   spin_unlock_irqrestore(&speakup_info.spinlock, flags);
   return NOTIFY_STOP;
  }
  del_timer(&cursor_timer);
  spk_shut_up &= 0xfe;
  spk_do_flush();
  start_read_all_timer(vc, value + 1);
  spin_unlock_irqrestore(&speakup_info.spinlock, flags);
  return NOTIFY_STOP;
 }
 spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 return NOTIFY_OK;
}
