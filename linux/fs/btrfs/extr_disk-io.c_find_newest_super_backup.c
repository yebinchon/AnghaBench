
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct btrfs_root_backup {int dummy; } ;
struct btrfs_fs_info {TYPE_1__* super_copy; } ;
struct TYPE_2__ {struct btrfs_root_backup* super_roots; } ;


 int BTRFS_NUM_BACKUP_ROOTS ;
 scalar_t__ btrfs_backup_tree_root_gen (struct btrfs_root_backup*) ;

__attribute__((used)) static int find_newest_super_backup(struct btrfs_fs_info *info, u64 newest_gen)
{
 u64 cur;
 int newest_index = -1;
 struct btrfs_root_backup *root_backup;
 int i;

 for (i = 0; i < BTRFS_NUM_BACKUP_ROOTS; i++) {
  root_backup = info->super_copy->super_roots + i;
  cur = btrfs_backup_tree_root_gen(root_backup);
  if (cur == newest_gen)
   newest_index = i;
 }


 if (newest_index == BTRFS_NUM_BACKUP_ROOTS - 1) {
  root_backup = info->super_copy->super_roots;
  cur = btrfs_backup_tree_root_gen(root_backup);
  if (cur == newest_gen)
   newest_index = 0;
 }
 return newest_index;
}
