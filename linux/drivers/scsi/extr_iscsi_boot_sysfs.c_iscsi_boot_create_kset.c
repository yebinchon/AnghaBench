
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_boot_kset {int kobj_list; int kset; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int firmware_kobj ;
 int kfree (struct iscsi_boot_kset*) ;
 int kset_create_and_add (char const*,int *,int ) ;
 struct iscsi_boot_kset* kzalloc (int,int ) ;

struct iscsi_boot_kset *iscsi_boot_create_kset(const char *set_name)
{
 struct iscsi_boot_kset *boot_kset;

 boot_kset = kzalloc(sizeof(*boot_kset), GFP_KERNEL);
 if (!boot_kset)
  return ((void*)0);

 boot_kset->kset = kset_create_and_add(set_name, ((void*)0), firmware_kobj);
 if (!boot_kset->kset) {
  kfree(boot_kset);
  return ((void*)0);
 }

 INIT_LIST_HEAD(&boot_kset->kobj_list);
 return boot_kset;
}
