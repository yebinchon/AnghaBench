
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msg_group_t {int end; int start; } ;
struct kobject {int dummy; } ;
struct TYPE_3__ {int name; } ;
struct kobj_attribute {TYPE_1__ attr; } ;
typedef int ssize_t ;
struct TYPE_4__ {int spinlock; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int message_show_helper (char*,int ,int ) ;
 TYPE_2__ speakup_info ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct msg_group_t* spk_find_msg_group (int ) ;

__attribute__((used)) static ssize_t message_show(struct kobject *kobj,
       struct kobj_attribute *attr, char *buf)
{
 ssize_t retval = 0;
 struct msg_group_t *group = spk_find_msg_group(attr->attr.name);
 unsigned long flags;

 if (WARN_ON(!group))
  return -EINVAL;

 spin_lock_irqsave(&speakup_info.spinlock, flags);
 retval = message_show_helper(buf, group->start, group->end);
 spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 return retval;
}
