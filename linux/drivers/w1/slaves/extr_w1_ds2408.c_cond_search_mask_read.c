
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int name; } ;
struct bin_attribute {TYPE_1__ attr; } ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;
struct TYPE_5__ {int dev; } ;


 int EFAULT ;
 int W1_F29_REG_COND_SEARCH_SELECT_MASK ;
 int _read_reg (TYPE_2__*,int ,char*) ;
 int dev_dbg (int *,char*,int ,struct kobject*,unsigned int,size_t,char*) ;
 TYPE_2__* kobj_to_w1_slave (struct kobject*) ;

__attribute__((used)) static ssize_t cond_search_mask_read(struct file *filp, struct kobject *kobj,
         struct bin_attribute *bin_attr, char *buf,
         loff_t off, size_t count)
{
 dev_dbg(&kobj_to_w1_slave(kobj)->dev,
  "Reading %s kobj: %p, off: %0#10x, count: %zu, buff addr: %p",
  bin_attr->attr.name, kobj, (unsigned int)off, count, buf);
 if (count != 1 || off != 0)
  return -EFAULT;
 return _read_reg(kobj_to_w1_slave(kobj),
  W1_F29_REG_COND_SEARCH_SELECT_MASK, buf);
}
