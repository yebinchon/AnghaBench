
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct kobject {int dummy; } ;
struct device {scalar_t__ id; } ;
struct attribute {int mode; } ;


 struct device* kobj_to_dev (struct kobject*) ;

__attribute__((used)) static umode_t pcpu_dev_is_visible(struct kobject *kobj,
       struct attribute *attr, int idx)
{
 struct device *dev = kobj_to_dev(kobj);





 return dev->id ? attr->mode : 0;
}
