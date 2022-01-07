
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct kobject {int dummy; } ;
struct attribute {int mode; } ;


 int CONFIG_NUMA ;
 int IS_ENABLED (int ) ;

__attribute__((used)) static umode_t nd_numa_attr_visible(struct kobject *kobj, struct attribute *a,
  int n)
{
 if (!IS_ENABLED(CONFIG_NUMA))
  return 0;

 return a->mode;
}
