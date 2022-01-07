
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_root {int free_ino_pinned; int free_ino_ctl; int commit_root; int node; scalar_t__ subv_writers; scalar_t__ anon_dev; int inode_tree; int ino_cache_inode; } ;


 int RB_EMPTY_ROOT (int *) ;
 int WARN_ON (int) ;
 int btrfs_free_subvolume_writers (scalar_t__) ;
 int btrfs_put_fs_root (struct btrfs_root*) ;
 int free_anon_bdev (scalar_t__) ;
 int free_extent_buffer (int ) ;
 int iput (int ) ;
 int kfree (int ) ;

void btrfs_free_fs_root(struct btrfs_root *root)
{
 iput(root->ino_cache_inode);
 WARN_ON(!RB_EMPTY_ROOT(&root->inode_tree));
 if (root->anon_dev)
  free_anon_bdev(root->anon_dev);
 if (root->subv_writers)
  btrfs_free_subvolume_writers(root->subv_writers);
 free_extent_buffer(root->node);
 free_extent_buffer(root->commit_root);
 kfree(root->free_ino_ctl);
 kfree(root->free_ino_pinned);
 btrfs_put_fs_root(root);
}
