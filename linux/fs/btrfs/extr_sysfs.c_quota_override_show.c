
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
struct btrfs_fs_info {int flags; } ;
typedef int ssize_t ;


 int BTRFS_FS_QUOTA_OVERRIDE ;
 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;
 int test_bit (int ,int *) ;
 struct btrfs_fs_info* to_fs_info (struct kobject*) ;

__attribute__((used)) static ssize_t quota_override_show(struct kobject *kobj,
       struct kobj_attribute *a, char *buf)
{
 struct btrfs_fs_info *fs_info = to_fs_info(kobj);
 int quota_override;

 quota_override = test_bit(BTRFS_FS_QUOTA_OVERRIDE, &fs_info->flags);
 return snprintf(buf, PAGE_SIZE, "%d\n", quota_override);
}
