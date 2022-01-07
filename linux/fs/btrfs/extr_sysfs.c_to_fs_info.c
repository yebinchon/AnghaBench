
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int * ktype; } ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_2__ {struct btrfs_fs_info* fs_info; } ;


 int btrfs_ktype ;
 TYPE_1__* to_fs_devs (struct kobject*) ;

__attribute__((used)) static inline struct btrfs_fs_info *to_fs_info(struct kobject *kobj)
{
 if (kobj->ktype != &btrfs_ktype)
  return ((void*)0);
 return to_fs_devs(kobj)->fs_info;
}
