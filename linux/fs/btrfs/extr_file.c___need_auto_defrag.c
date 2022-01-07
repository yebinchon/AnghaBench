
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int dummy; } ;


 int AUTO_DEFRAG ;
 scalar_t__ btrfs_fs_closing (struct btrfs_fs_info*) ;
 int btrfs_test_opt (struct btrfs_fs_info*,int ) ;

__attribute__((used)) static inline int __need_auto_defrag(struct btrfs_fs_info *fs_info)
{
 if (!btrfs_test_opt(fs_info, AUTO_DEFRAG))
  return 0;

 if (btrfs_fs_closing(fs_info))
  return 0;

 return 1;
}
