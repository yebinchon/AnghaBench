
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct btrfs_inode {TYPE_2__* root; } ;
struct btrfs_fs_info {TYPE_1__* delayed_root; int flags; } ;
struct btrfs_delayed_node {int mutex; int count; int flags; } ;
struct TYPE_4__ {struct btrfs_fs_info* fs_info; } ;
struct TYPE_3__ {int items; } ;


 int BTRFS_DELAYED_NODE_DEL_IREF ;
 int BTRFS_FS_LOG_RECOVERING ;
 int EAGAIN ;
 scalar_t__ IS_ERR (struct btrfs_delayed_node*) ;
 int PTR_ERR (struct btrfs_delayed_node*) ;
 int atomic_inc (int *) ;
 struct btrfs_delayed_node* btrfs_get_or_create_delayed_node (struct btrfs_inode*) ;
 int btrfs_release_delayed_node (struct btrfs_delayed_node*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

int btrfs_delayed_delete_inode_ref(struct btrfs_inode *inode)
{
 struct btrfs_fs_info *fs_info = inode->root->fs_info;
 struct btrfs_delayed_node *delayed_node;






 if (test_bit(BTRFS_FS_LOG_RECOVERING, &fs_info->flags))
  return -EAGAIN;

 delayed_node = btrfs_get_or_create_delayed_node(inode);
 if (IS_ERR(delayed_node))
  return PTR_ERR(delayed_node);
 mutex_lock(&delayed_node->mutex);
 if (test_bit(BTRFS_DELAYED_NODE_DEL_IREF, &delayed_node->flags))
  goto release_node;

 set_bit(BTRFS_DELAYED_NODE_DEL_IREF, &delayed_node->flags);
 delayed_node->count++;
 atomic_inc(&fs_info->delayed_root->items);
release_node:
 mutex_unlock(&delayed_node->mutex);
 btrfs_release_delayed_node(delayed_node);
 return 0;
}
