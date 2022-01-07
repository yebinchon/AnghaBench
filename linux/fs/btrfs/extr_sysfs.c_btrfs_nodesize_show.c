
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
struct btrfs_fs_info {TYPE_1__* super_copy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int nodesize; } ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;
 struct btrfs_fs_info* to_fs_info (struct kobject*) ;

__attribute__((used)) static ssize_t btrfs_nodesize_show(struct kobject *kobj,
    struct kobj_attribute *a, char *buf)
{
 struct btrfs_fs_info *fs_info = to_fs_info(kobj);

 return snprintf(buf, PAGE_SIZE, "%u\n", fs_info->super_copy->nodesize);
}
