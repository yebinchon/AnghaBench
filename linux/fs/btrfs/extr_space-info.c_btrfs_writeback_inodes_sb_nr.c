
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct super_block {int s_umount; } ;
struct btrfs_fs_info {struct super_block* sb; } ;
struct TYPE_2__ {int journal_info; } ;


 int WB_REASON_FS_FREE_SPACE ;
 int btrfs_start_delalloc_roots (struct btrfs_fs_info*,int) ;
 int btrfs_wait_ordered_roots (struct btrfs_fs_info*,int,int ,int ) ;
 TYPE_1__* current ;
 scalar_t__ down_read_trylock (int *) ;
 int up_read (int *) ;
 int writeback_inodes_sb_nr (struct super_block*,unsigned long,int ) ;

__attribute__((used)) static void btrfs_writeback_inodes_sb_nr(struct btrfs_fs_info *fs_info,
      unsigned long nr_pages, int nr_items)
{
 struct super_block *sb = fs_info->sb;

 if (down_read_trylock(&sb->s_umount)) {
  writeback_inodes_sb_nr(sb, nr_pages, WB_REASON_FS_FREE_SPACE);
  up_read(&sb->s_umount);
 } else {







  btrfs_start_delalloc_roots(fs_info, nr_items);
  if (!current->journal_info)
   btrfs_wait_ordered_roots(fs_info, nr_items, 0, (u64)-1);
 }
}
