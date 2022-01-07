
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct extent_io_tree {int dummy; } ;
struct btrfs_trans_handle {TYPE_1__* transaction; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int dummy; } ;
struct blk_plug {int dummy; } ;
struct TYPE_2__ {struct extent_io_tree dirty_pages; } ;


 int EXTENT_DIRTY ;
 int blk_finish_plug (struct blk_plug*) ;
 int blk_start_plug (struct blk_plug*) ;
 int btrfs_wait_extents (struct btrfs_fs_info*,struct extent_io_tree*) ;
 int btrfs_write_marked_extents (struct btrfs_fs_info*,struct extent_io_tree*,int ) ;
 int extent_io_tree_release (struct extent_io_tree*) ;

__attribute__((used)) static int btrfs_write_and_wait_transaction(struct btrfs_trans_handle *trans)
{
 int ret;
 int ret2;
 struct extent_io_tree *dirty_pages = &trans->transaction->dirty_pages;
 struct btrfs_fs_info *fs_info = trans->fs_info;
 struct blk_plug plug;

 blk_start_plug(&plug);
 ret = btrfs_write_marked_extents(fs_info, dirty_pages, EXTENT_DIRTY);
 blk_finish_plug(&plug);
 ret2 = btrfs_wait_extents(fs_info, dirty_pages);

 extent_io_tree_release(&trans->transaction->dirty_pages);

 if (ret)
  return ret;
 else if (ret2)
  return ret2;
 else
  return 0;
}
