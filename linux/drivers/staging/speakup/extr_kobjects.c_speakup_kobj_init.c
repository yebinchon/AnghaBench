
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int * accessibility_kobj ;
 int i18n_attr_group ;
 int * kobject_create_and_add (char*,int *) ;
 int kobject_put (int *) ;
 int main_attr_group ;
 int * speakup_kobj ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

int speakup_kobj_init(void)
{
 int retval;
 accessibility_kobj = kobject_create_and_add("accessibility", ((void*)0));
 if (!accessibility_kobj) {
  retval = -ENOMEM;
  goto out;
 }

 speakup_kobj = kobject_create_and_add("speakup", accessibility_kobj);
 if (!speakup_kobj) {
  retval = -ENOMEM;
  goto err_acc;
 }


 retval = sysfs_create_group(speakup_kobj, &main_attr_group);
 if (retval)
  goto err_speakup;

 retval = sysfs_create_group(speakup_kobj, &i18n_attr_group);
 if (retval)
  goto err_group;

 goto out;

err_group:
 sysfs_remove_group(speakup_kobj, &main_attr_group);
err_speakup:
 kobject_put(speakup_kobj);
err_acc:
 kobject_put(accessibility_kobj);
out:
 return retval;
}
