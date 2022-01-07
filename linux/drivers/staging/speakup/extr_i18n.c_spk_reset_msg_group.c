
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msg_group_t {int start; int end; } ;
typedef enum msg_index_t { ____Placeholder_msg_index_t } msg_index_t ;
struct TYPE_2__ {int spinlock; } ;


 int kfree (scalar_t__) ;
 scalar_t__* speakup_default_msgs ;
 TYPE_1__ speakup_info ;
 scalar_t__* speakup_msgs ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void spk_reset_msg_group(struct msg_group_t *group)
{
 unsigned long flags;
 enum msg_index_t i;

 spin_lock_irqsave(&speakup_info.spinlock, flags);

 for (i = group->start; i <= group->end; i++) {
  if (speakup_msgs[i] != speakup_default_msgs[i])
   kfree(speakup_msgs[i]);
  speakup_msgs[i] = speakup_default_msgs[i];
 }
 spin_unlock_irqrestore(&speakup_info.spinlock, flags);
}
