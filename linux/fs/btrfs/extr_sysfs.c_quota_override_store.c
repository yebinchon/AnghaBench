
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
struct btrfs_fs_info {int flags; } ;
typedef int ssize_t ;


 int BTRFS_FS_QUOTA_OVERRIDE ;
 int CAP_SYS_RESOURCE ;
 int EINVAL ;
 int EPERM ;
 int capable (int ) ;
 int clear_bit (int ,int *) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int set_bit (int ,int *) ;
 struct btrfs_fs_info* to_fs_info (struct kobject*) ;

__attribute__((used)) static ssize_t quota_override_store(struct kobject *kobj,
        struct kobj_attribute *a,
        const char *buf, size_t len)
{
 struct btrfs_fs_info *fs_info = to_fs_info(kobj);
 unsigned long knob;
 int err;

 if (!fs_info)
  return -EPERM;

 if (!capable(CAP_SYS_RESOURCE))
  return -EPERM;

 err = kstrtoul(buf, 10, &knob);
 if (err)
  return err;
 if (knob > 1)
  return -EINVAL;

 if (knob)
  set_bit(BTRFS_FS_QUOTA_OVERRIDE, &fs_info->flags);
 else
  clear_bit(BTRFS_FS_QUOTA_OVERRIDE, &fs_info->flags);

 return len;
}
