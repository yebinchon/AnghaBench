
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct kobject {int dummy; } ;
struct attribute {int mode; } ;
struct TYPE_2__ {struct attribute attr; } ;


 TYPE_1__ dev_attr_resource ;

__attribute__((used)) static umode_t pfn_visible(struct kobject *kobj, struct attribute *a, int n)
{
 if (a == &dev_attr_resource.attr)
  return 0400;
 return a->mode;
}
