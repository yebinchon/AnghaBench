
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct kobj_attribute {TYPE_1__ attr; } ;


 int pr_warn (char*,int ,int) ;
 int sysfs_create_file (struct kobject*,TYPE_1__*) ;

__attribute__((used)) static void manager_sysfs_init_attribute(struct kobject *kobj,
      struct kobj_attribute *kattr)
{
 int err;

 err = sysfs_create_file(kobj, &kattr->attr);
 if (err) {
  pr_warn("creating the sysfs entry for %s failed: %d\n",
   kattr->attr.name, err);
 }
}
