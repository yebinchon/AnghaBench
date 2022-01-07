
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_5__ {int nrpages; } ;
struct inode {TYPE_1__ i_data; int i_dentry; int i_sb; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_ordered_extent {int len; int file_offset; } ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_6__ {int reserved; int size; } ;
struct TYPE_7__ {int outstanding_extents; int delalloc_bytes; int new_delalloc_bytes; int csum_bytes; int defrag_bytes; TYPE_2__ block_rsv; struct btrfs_root* root; } ;


 TYPE_3__* BTRFS_I (struct inode*) ;
 int WARN_ON (int) ;
 int btrfs_drop_extent_cache (TYPE_3__*,int ,int ,int ) ;
 int btrfs_err (struct btrfs_fs_info*,char*,int ,int ) ;
 struct btrfs_ordered_extent* btrfs_lookup_first_ordered_extent (struct inode*,int ) ;
 int btrfs_put_ordered_extent (struct btrfs_ordered_extent*) ;
 int btrfs_qgroup_check_reserved_leak (struct inode*) ;
 int btrfs_remove_ordered_extent (struct inode*,struct btrfs_ordered_extent*) ;
 struct btrfs_fs_info* btrfs_sb (int ) ;
 int hlist_empty (int *) ;
 int inode_tree_del (struct inode*) ;

void btrfs_destroy_inode(struct inode *inode)
{
 struct btrfs_fs_info *fs_info = btrfs_sb(inode->i_sb);
 struct btrfs_ordered_extent *ordered;
 struct btrfs_root *root = BTRFS_I(inode)->root;

 WARN_ON(!hlist_empty(&inode->i_dentry));
 WARN_ON(inode->i_data.nrpages);
 WARN_ON(BTRFS_I(inode)->block_rsv.reserved);
 WARN_ON(BTRFS_I(inode)->block_rsv.size);
 WARN_ON(BTRFS_I(inode)->outstanding_extents);
 WARN_ON(BTRFS_I(inode)->delalloc_bytes);
 WARN_ON(BTRFS_I(inode)->new_delalloc_bytes);
 WARN_ON(BTRFS_I(inode)->csum_bytes);
 WARN_ON(BTRFS_I(inode)->defrag_bytes);






 if (!root)
  return;

 while (1) {
  ordered = btrfs_lookup_first_ordered_extent(inode, (u64)-1);
  if (!ordered)
   break;
  else {
   btrfs_err(fs_info,
      "found ordered extent %llu %llu on inode cleanup",
      ordered->file_offset, ordered->len);
   btrfs_remove_ordered_extent(inode, ordered);
   btrfs_put_ordered_extent(ordered);
   btrfs_put_ordered_extent(ordered);
  }
 }
 btrfs_qgroup_check_reserved_leak(inode);
 inode_tree_del(inode);
 btrfs_drop_extent_cache(BTRFS_I(inode), 0, (u64)-1, 0);
}
