
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_feature_attr {int feature_bit; int feature_set; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int can_modify_feature (struct btrfs_feature_attr*) ;
 int get_features (struct btrfs_fs_info*,int ) ;
 int snprintf (char*,int ,char*,int) ;
 struct btrfs_feature_attr* to_btrfs_feature_attr (struct kobj_attribute*) ;
 struct btrfs_fs_info* to_fs_info (struct kobject*) ;

__attribute__((used)) static ssize_t btrfs_feature_attr_show(struct kobject *kobj,
           struct kobj_attribute *a, char *buf)
{
 int val = 0;
 struct btrfs_fs_info *fs_info = to_fs_info(kobj);
 struct btrfs_feature_attr *fa = to_btrfs_feature_attr(a);
 if (fs_info) {
  u64 features = get_features(fs_info, fa->feature_set);
  if (features & fa->feature_bit)
   val = 1;
 } else
  val = can_modify_feature(fa);

 return snprintf(buf, PAGE_SIZE, "%d\n", val);
}
