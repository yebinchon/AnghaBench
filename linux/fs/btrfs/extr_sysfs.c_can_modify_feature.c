
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_feature_attr {int feature_set; int feature_bit; } ;


 int BTRFS_FEATURE_COMPAT_RO_SAFE_CLEAR ;
 int BTRFS_FEATURE_COMPAT_RO_SAFE_SET ;
 int BTRFS_FEATURE_COMPAT_SAFE_CLEAR ;
 int BTRFS_FEATURE_COMPAT_SAFE_SET ;
 int BTRFS_FEATURE_INCOMPAT_SAFE_CLEAR ;
 int BTRFS_FEATURE_INCOMPAT_SAFE_SET ;



 int pr_warn (char*,int) ;

__attribute__((used)) static int can_modify_feature(struct btrfs_feature_attr *fa)
{
 int val = 0;
 u64 set, clear;
 switch (fa->feature_set) {
 case 130:
  set = BTRFS_FEATURE_COMPAT_SAFE_SET;
  clear = BTRFS_FEATURE_COMPAT_SAFE_CLEAR;
  break;
 case 129:
  set = BTRFS_FEATURE_COMPAT_RO_SAFE_SET;
  clear = BTRFS_FEATURE_COMPAT_RO_SAFE_CLEAR;
  break;
 case 128:
  set = BTRFS_FEATURE_INCOMPAT_SAFE_SET;
  clear = BTRFS_FEATURE_INCOMPAT_SAFE_CLEAR;
  break;
 default:
  pr_warn("btrfs: sysfs: unknown feature set %d\n",
    fa->feature_set);
  return 0;
 }

 if (set & fa->feature_bit)
  val |= 1;
 if (clear & fa->feature_bit)
  val |= 2;

 return val;
}
