
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode_defrag {int dummy; } ;
struct btrfs_inode {TYPE_1__* root; } ;
struct btrfs_fs_info {int defrag_inodes_lock; } ;
struct TYPE_2__ {struct btrfs_fs_info* fs_info; } ;


 int __btrfs_add_inode_defrag (struct btrfs_inode*,struct inode_defrag*) ;
 int __need_auto_defrag (struct btrfs_fs_info*) ;
 int btrfs_inode_defrag_cachep ;
 int kmem_cache_free (int ,struct inode_defrag*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void btrfs_requeue_inode_defrag(struct btrfs_inode *inode,
           struct inode_defrag *defrag)
{
 struct btrfs_fs_info *fs_info = inode->root->fs_info;
 int ret;

 if (!__need_auto_defrag(fs_info))
  goto out;





 spin_lock(&fs_info->defrag_inodes_lock);
 ret = __btrfs_add_inode_defrag(inode, defrag);
 spin_unlock(&fs_info->defrag_inodes_lock);
 if (ret)
  goto out;
 return;
out:
 kmem_cache_free(btrfs_inode_defrag_cachep, defrag);
}
