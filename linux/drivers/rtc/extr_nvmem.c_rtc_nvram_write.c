
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int private; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int dev_warn_once (int ,int ) ;
 int kobj_to_dev (struct kobject*) ;
 int nvmem_device_write (int ,int ,size_t,char*) ;
 int nvram_warning ;

__attribute__((used)) static ssize_t
rtc_nvram_write(struct file *filp, struct kobject *kobj,
  struct bin_attribute *attr,
  char *buf, loff_t off, size_t count)
{
 dev_warn_once(kobj_to_dev(kobj), nvram_warning);

 return nvmem_device_write(attr->private, off, count, buf);
}
