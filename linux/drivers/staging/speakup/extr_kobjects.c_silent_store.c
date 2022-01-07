
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vc_data {int dummy; } ;
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_4__ {int spinlock; } ;
struct TYPE_3__ {struct vc_data* d; } ;


 size_t EINVAL ;
 size_t fg_console ;
 int pr_warn (char*,char) ;
 TYPE_2__ speakup_info ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int spk_do_flush () ;
 char spk_shut_up ;
 int strlen (char const*) ;
 TYPE_1__* vc_cons ;

__attribute__((used)) static ssize_t silent_store(struct kobject *kobj, struct kobj_attribute *attr,
       const char *buf, size_t count)
{
 int len;
 struct vc_data *vc = vc_cons[fg_console].d;
 char ch = 0;
 char shut;
 unsigned long flags;

 len = strlen(buf);
 if (len > 0 && len < 3) {
  ch = buf[0];
  if (ch == '\n')
   ch = '0';
 }
 if (ch < '0' || ch > '7') {
  pr_warn("silent value '%c' not in range (0,7)\n", ch);
  return -EINVAL;
 }
 spin_lock_irqsave(&speakup_info.spinlock, flags);
 if (ch & 2) {
  shut = 1;
  spk_do_flush();
 } else {
  shut = 0;
 }
 if (ch & 4)
  shut |= 0x40;
 if (ch & 1)
  spk_shut_up |= shut;
 else
  spk_shut_up &= ~shut;
 spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 return count;
}
