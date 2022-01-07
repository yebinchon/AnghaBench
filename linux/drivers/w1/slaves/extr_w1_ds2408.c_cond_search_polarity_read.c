
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;


 int EFAULT ;
 int W1_F29_REG_COND_SEARCH_POL_SELECT ;
 int _read_reg (int ,int ,char*) ;
 int kobj_to_w1_slave (struct kobject*) ;

__attribute__((used)) static ssize_t cond_search_polarity_read(struct file *filp,
      struct kobject *kobj,
      struct bin_attribute *bin_attr,
      char *buf, loff_t off, size_t count)
{
 if (count != 1 || off != 0)
  return -EFAULT;
 return _read_reg(kobj_to_w1_slave(kobj),
  W1_F29_REG_COND_SEARCH_POL_SELECT, buf);
}
