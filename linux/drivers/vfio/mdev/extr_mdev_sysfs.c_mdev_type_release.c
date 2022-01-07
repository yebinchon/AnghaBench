
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdev_type {int dummy; } ;
struct kobject {int name; } ;


 int kfree (struct mdev_type*) ;
 int pr_debug (char*,int ) ;
 struct mdev_type* to_mdev_type (struct kobject*) ;

__attribute__((used)) static void mdev_type_release(struct kobject *kobj)
{
 struct mdev_type *type = to_mdev_type(kobj);

 pr_debug("Releasing group %s\n", kobj->name);
 kfree(type);
}
