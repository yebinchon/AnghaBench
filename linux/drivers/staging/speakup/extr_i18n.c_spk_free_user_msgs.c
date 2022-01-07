
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum msg_index_t { ____Placeholder_msg_index_t } msg_index_t ;
struct TYPE_2__ {int spinlock; } ;


 int MSG_FIRST_INDEX ;
 int MSG_LAST_INDEX ;
 int kfree (scalar_t__) ;
 scalar_t__* speakup_default_msgs ;
 TYPE_1__ speakup_info ;
 scalar_t__* speakup_msgs ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void spk_free_user_msgs(void)
{
 enum msg_index_t index;
 unsigned long flags;

 spin_lock_irqsave(&speakup_info.spinlock, flags);
 for (index = MSG_FIRST_INDEX; index < MSG_LAST_INDEX; index++) {
  if (speakup_msgs[index] != speakup_default_msgs[index]) {
   kfree(speakup_msgs[index]);
   speakup_msgs[index] = speakup_default_msgs[index];
  }
 }
 spin_unlock_irqrestore(&speakup_info.spinlock, flags);
}
