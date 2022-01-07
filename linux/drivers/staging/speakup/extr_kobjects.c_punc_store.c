
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct st_var_header {int var_id; } ;
struct punc_var_t {int value; } ;
struct kobject {int dummy; } ;
struct TYPE_3__ {int name; } ;
struct kobj_attribute {TYPE_1__ attr; } ;
typedef size_t ssize_t ;
struct TYPE_4__ {int spinlock; } ;


 size_t EINVAL ;
 int memcpy (char*,char const*,int) ;
 int pr_warn (char*,int ) ;
 TYPE_2__ speakup_info ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct punc_var_t* spk_get_punc_var (int ) ;
 int spk_set_mask_bits (char*,int ,int) ;
 struct st_var_header* spk_var_header_by_name (int ) ;
 int strlen (char const*) ;

__attribute__((used)) static ssize_t punc_store(struct kobject *kobj, struct kobj_attribute *attr,
     const char *buf, size_t count)
{
 int x;
 struct st_var_header *p_header;
 struct punc_var_t *var;
 char punc_buf[100];
 unsigned long flags;

 x = strlen(buf);
 if (x < 1 || x > 99)
  return -EINVAL;

 p_header = spk_var_header_by_name(attr->attr.name);
 if (!p_header) {
  pr_warn("p_header is null, attr->attr.name is %s\n",
   attr->attr.name);
  return -EINVAL;
 }

 var = spk_get_punc_var(p_header->var_id);
 if (!var) {
  pr_warn("var is null, p_header->var_id is %i\n",
   p_header->var_id);
  return -EINVAL;
 }

 memcpy(punc_buf, buf, x);

 while (x && punc_buf[x - 1] == '\n')
  x--;
 punc_buf[x] = '\0';

 spin_lock_irqsave(&speakup_info.spinlock, flags);

 if (*punc_buf == 'd' || *punc_buf == 'r')
  x = spk_set_mask_bits(((void*)0), var->value, 3);
 else
  x = spk_set_mask_bits(punc_buf, var->value, 3);

 spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 return count;
}
