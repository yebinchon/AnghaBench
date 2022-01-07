
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
struct btrfs_fs_info {int transaction_kthread; int super_lock; TYPE_1__* super_copy; int sb; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int label; } ;


 size_t BTRFS_LABEL_SIZE ;
 int COMMIT ;
 size_t EINVAL ;
 size_t EPERM ;
 size_t EROFS ;
 int btrfs_set_pending (struct btrfs_fs_info*,int ) ;
 int memcpy (int ,char const*,size_t) ;
 int memset (int ,int ,size_t) ;
 scalar_t__ sb_rdonly (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 size_t strcspn (char const*,char*) ;
 struct btrfs_fs_info* to_fs_info (struct kobject*) ;
 int wake_up_process (int ) ;

__attribute__((used)) static ssize_t btrfs_label_store(struct kobject *kobj,
     struct kobj_attribute *a,
     const char *buf, size_t len)
{
 struct btrfs_fs_info *fs_info = to_fs_info(kobj);
 size_t p_len;

 if (!fs_info)
  return -EPERM;

 if (sb_rdonly(fs_info->sb))
  return -EROFS;





 p_len = strcspn(buf, "\n");

 if (p_len >= BTRFS_LABEL_SIZE)
  return -EINVAL;

 spin_lock(&fs_info->super_lock);
 memset(fs_info->super_copy->label, 0, BTRFS_LABEL_SIZE);
 memcpy(fs_info->super_copy->label, buf, p_len);
 spin_unlock(&fs_info->super_lock);




 btrfs_set_pending(fs_info, COMMIT);
 wake_up_process(fs_info->transaction_kthread);

 return len;
}
