
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_fs_info {int backup_root_index; } ;


 int BTRFS_NUM_BACKUP_ROOTS ;
 int find_newest_super_backup (struct btrfs_fs_info*,int ) ;

__attribute__((used)) static void find_oldest_super_backup(struct btrfs_fs_info *info,
         u64 newest_gen)
{
 int newest_index = -1;

 newest_index = find_newest_super_backup(info, newest_gen);

 if (newest_index == -1) {
  info->backup_root_index = 0;
 } else {
  info->backup_root_index = (newest_index + 1) % BTRFS_NUM_BACKUP_ROOTS;
 }
}
