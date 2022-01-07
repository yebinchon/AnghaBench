
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
struct btrfs_fs_info {int transaction_kthread; int super_lock; int sb; } ;
struct TYPE_3__ {int name; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct btrfs_feature_attr {scalar_t__ feature_set; int feature_bit; TYPE_2__ kobj_attr; } ;
typedef int ssize_t ;


 int BTRFS_FEATURE_COMPAT_RO_SAFE_CLEAR ;
 int BTRFS_FEATURE_COMPAT_RO_SAFE_SET ;
 int BTRFS_FEATURE_COMPAT_SAFE_CLEAR ;
 int BTRFS_FEATURE_COMPAT_SAFE_SET ;
 int BTRFS_FEATURE_INCOMPAT_SAFE_CLEAR ;
 int BTRFS_FEATURE_INCOMPAT_SAFE_SET ;
 int COMMIT ;
 int EPERM ;
 int EROFS ;
 scalar_t__ FEAT_COMPAT ;
 scalar_t__ FEAT_COMPAT_RO ;
 int btrfs_info (struct btrfs_fs_info*,char*,char*,int ) ;
 int btrfs_set_pending (struct btrfs_fs_info*,int ) ;
 int get_features (struct btrfs_fs_info*,scalar_t__) ;
 int kstrtoul (int ,int ,unsigned long*) ;
 scalar_t__ sb_rdonly (int ) ;
 int set_features (struct btrfs_fs_info*,scalar_t__,int) ;
 int skip_spaces (char const*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct btrfs_feature_attr* to_btrfs_feature_attr (struct kobj_attribute*) ;
 struct btrfs_fs_info* to_fs_info (struct kobject*) ;
 int wake_up_process (int ) ;

__attribute__((used)) static ssize_t btrfs_feature_attr_store(struct kobject *kobj,
     struct kobj_attribute *a,
     const char *buf, size_t count)
{
 struct btrfs_fs_info *fs_info;
 struct btrfs_feature_attr *fa = to_btrfs_feature_attr(a);
 u64 features, set, clear;
 unsigned long val;
 int ret;

 fs_info = to_fs_info(kobj);
 if (!fs_info)
  return -EPERM;

 if (sb_rdonly(fs_info->sb))
  return -EROFS;

 ret = kstrtoul(skip_spaces(buf), 0, &val);
 if (ret)
  return ret;

 if (fa->feature_set == FEAT_COMPAT) {
  set = BTRFS_FEATURE_COMPAT_SAFE_SET;
  clear = BTRFS_FEATURE_COMPAT_SAFE_CLEAR;
 } else if (fa->feature_set == FEAT_COMPAT_RO) {
  set = BTRFS_FEATURE_COMPAT_RO_SAFE_SET;
  clear = BTRFS_FEATURE_COMPAT_RO_SAFE_CLEAR;
 } else {
  set = BTRFS_FEATURE_INCOMPAT_SAFE_SET;
  clear = BTRFS_FEATURE_INCOMPAT_SAFE_CLEAR;
 }

 features = get_features(fs_info, fa->feature_set);


 if ((val && (features & fa->feature_bit)) ||
     (!val && !(features & fa->feature_bit)))
  return count;

 if ((val && !(set & fa->feature_bit)) ||
     (!val && !(clear & fa->feature_bit))) {
  btrfs_info(fs_info,
   "%sabling feature %s on mounted fs is not supported.",
   val ? "En" : "Dis", fa->kobj_attr.attr.name);
  return -EPERM;
 }

 btrfs_info(fs_info, "%s %s feature flag",
     val ? "Setting" : "Clearing", fa->kobj_attr.attr.name);

 spin_lock(&fs_info->super_lock);
 features = get_features(fs_info, fa->feature_set);
 if (val)
  features |= fa->feature_bit;
 else
  features &= ~fa->feature_bit;
 set_features(fs_info, fa->feature_set, features);
 spin_unlock(&fs_info->super_lock);




 btrfs_set_pending(fs_info, COMMIT);
 wake_up_process(fs_info->transaction_kthread);

 return count;
}
