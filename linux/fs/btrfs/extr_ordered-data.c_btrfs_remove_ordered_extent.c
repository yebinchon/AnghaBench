
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_node {int dummy; } ;
struct inode {int i_sb; } ;
struct btrfs_root {int ordered_extent_lock; int ordered_root; int nr_ordered_extents; } ;
struct btrfs_ordered_inode_tree {int lock; struct rb_node* last; int tree; } ;
struct btrfs_ordered_extent {int wait; int root_extent_list; int flags; struct rb_node rb_node; int len; } ;
struct btrfs_inode {struct btrfs_ordered_inode_tree ordered_tree; int lock; struct btrfs_root* root; } ;
struct btrfs_fs_info {int ordered_root_lock; int delalloc_batch; int dio_bytes; struct btrfs_root* tree_root; } ;


 struct btrfs_inode* BTRFS_I (struct inode*) ;
 int BTRFS_ORDERED_COMPLETE ;
 int BTRFS_ORDERED_DIRECT ;
 int BUG_ON (int ) ;
 int RB_CLEAR_NODE (struct rb_node*) ;
 int btrfs_delalloc_release_metadata (struct btrfs_inode*,int ,int) ;
 int btrfs_mod_outstanding_extents (struct btrfs_inode*,int) ;
 struct btrfs_fs_info* btrfs_sb (int ) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int percpu_counter_add_batch (int *,int ,int ) ;
 int rb_erase (struct rb_node*,int *) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int trace_btrfs_ordered_extent_remove (struct inode*,struct btrfs_ordered_extent*) ;
 int wake_up (int *) ;

void btrfs_remove_ordered_extent(struct inode *inode,
     struct btrfs_ordered_extent *entry)
{
 struct btrfs_fs_info *fs_info = btrfs_sb(inode->i_sb);
 struct btrfs_ordered_inode_tree *tree;
 struct btrfs_inode *btrfs_inode = BTRFS_I(inode);
 struct btrfs_root *root = btrfs_inode->root;
 struct rb_node *node;


 spin_lock(&btrfs_inode->lock);
 btrfs_mod_outstanding_extents(btrfs_inode, -1);
 spin_unlock(&btrfs_inode->lock);
 if (root != fs_info->tree_root)
  btrfs_delalloc_release_metadata(btrfs_inode, entry->len, 0);

 if (test_bit(BTRFS_ORDERED_DIRECT, &entry->flags))
  percpu_counter_add_batch(&fs_info->dio_bytes, -entry->len,
      fs_info->delalloc_batch);

 tree = &btrfs_inode->ordered_tree;
 spin_lock_irq(&tree->lock);
 node = &entry->rb_node;
 rb_erase(node, &tree->tree);
 RB_CLEAR_NODE(node);
 if (tree->last == node)
  tree->last = ((void*)0);
 set_bit(BTRFS_ORDERED_COMPLETE, &entry->flags);
 spin_unlock_irq(&tree->lock);

 spin_lock(&root->ordered_extent_lock);
 list_del_init(&entry->root_extent_list);
 root->nr_ordered_extents--;

 trace_btrfs_ordered_extent_remove(inode, entry);

 if (!root->nr_ordered_extents) {
  spin_lock(&fs_info->ordered_root_lock);
  BUG_ON(list_empty(&root->ordered_root));
  list_del_init(&root->ordered_root);
  spin_unlock(&fs_info->ordered_root_lock);
 }
 spin_unlock(&root->ordered_extent_lock);
 wake_up(&entry->wait);
}
