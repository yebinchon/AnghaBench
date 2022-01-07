
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct inode_defrag {int root; int transid; int ino; } ;
struct btrfs_trans_handle {int transid; } ;
struct TYPE_2__ {int objectid; } ;
struct btrfs_root {TYPE_1__ root_key; int last_trans; struct btrfs_fs_info* fs_info; } ;
struct btrfs_inode {int runtime_flags; struct btrfs_root* root; } ;
struct btrfs_fs_info {int defrag_inodes_lock; } ;


 int BTRFS_INODE_IN_DEFRAG ;
 int ENOMEM ;
 int GFP_NOFS ;
 int __btrfs_add_inode_defrag (struct btrfs_inode*,struct inode_defrag*) ;
 int __need_auto_defrag (struct btrfs_fs_info*) ;
 int btrfs_ino (struct btrfs_inode*) ;
 int btrfs_inode_defrag_cachep ;
 int kmem_cache_free (int ,struct inode_defrag*) ;
 struct inode_defrag* kmem_cache_zalloc (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

int btrfs_add_inode_defrag(struct btrfs_trans_handle *trans,
      struct btrfs_inode *inode)
{
 struct btrfs_root *root = inode->root;
 struct btrfs_fs_info *fs_info = root->fs_info;
 struct inode_defrag *defrag;
 u64 transid;
 int ret;

 if (!__need_auto_defrag(fs_info))
  return 0;

 if (test_bit(BTRFS_INODE_IN_DEFRAG, &inode->runtime_flags))
  return 0;

 if (trans)
  transid = trans->transid;
 else
  transid = inode->root->last_trans;

 defrag = kmem_cache_zalloc(btrfs_inode_defrag_cachep, GFP_NOFS);
 if (!defrag)
  return -ENOMEM;

 defrag->ino = btrfs_ino(inode);
 defrag->transid = transid;
 defrag->root = root->root_key.objectid;

 spin_lock(&fs_info->defrag_inodes_lock);
 if (!test_bit(BTRFS_INODE_IN_DEFRAG, &inode->runtime_flags)) {





  ret = __btrfs_add_inode_defrag(inode, defrag);
  if (ret)
   kmem_cache_free(btrfs_inode_defrag_cachep, defrag);
 } else {
  kmem_cache_free(btrfs_inode_defrag_cachep, defrag);
 }
 spin_unlock(&fs_info->defrag_inodes_lock);
 return 0;
}
