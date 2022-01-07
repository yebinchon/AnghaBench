
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_char ;
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int spinlock; } ;


 int KEY_MAP_VER ;
 int SHIFT_TBL_SIZE ;
 char SPACE ;
 TYPE_1__ speakup_info ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__* spk_key_buf ;
 int sprintf (char*,char*,int,...) ;

__attribute__((used)) static ssize_t keymap_show(struct kobject *kobj, struct kobj_attribute *attr,
      char *buf)
{
 char *cp = buf;
 int i;
 int n;
 int num_keys;
 int nstates;
 u_char *cp1;
 u_char ch;
 unsigned long flags;

 spin_lock_irqsave(&speakup_info.spinlock, flags);
 cp1 = spk_key_buf + SHIFT_TBL_SIZE;
 num_keys = (int)(*cp1);
 nstates = (int)cp1[1];
 cp += sprintf(cp, "%d, %d, %d,\n", KEY_MAP_VER, num_keys, nstates);
 cp1 += 2;



 for (n = 0; n <= num_keys; n++) {
  for (i = 0; i <= nstates; i++) {
   ch = *cp1++;
   cp += sprintf(cp, "%d,", (int)ch);
   *cp++ = (i < nstates) ? SPACE : '\n';
  }
 }
 cp += sprintf(cp, "0, %d\n", KEY_MAP_VER);
 spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 return (int)(cp - buf);
}
