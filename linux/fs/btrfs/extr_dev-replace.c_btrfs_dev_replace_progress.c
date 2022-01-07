
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_dev_replace {int replace_state; int srcdev; int cursor_left; } ;
struct btrfs_fs_info {struct btrfs_dev_replace dev_replace; } ;







 int btrfs_device_get_total_bytes (int ) ;
 int div64_u64 (int ,int ) ;
 int div_u64 (int ,int) ;

__attribute__((used)) static u64 btrfs_dev_replace_progress(struct btrfs_fs_info *fs_info)
{
 struct btrfs_dev_replace *dev_replace = &fs_info->dev_replace;
 u64 ret = 0;

 switch (dev_replace->replace_state) {
 case 130:
 case 132:
  ret = 0;
  break;
 case 131:
  ret = 1000;
  break;
 case 129:
 case 128:
  ret = div64_u64(dev_replace->cursor_left,
    div_u64(btrfs_device_get_total_bytes(
      dev_replace->srcdev), 1000));
  break;
 }

 return ret;
}
