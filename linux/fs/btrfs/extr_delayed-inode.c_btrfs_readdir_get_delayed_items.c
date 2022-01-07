
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct inode {int dummy; } ;
struct btrfs_delayed_node {int refs; int mutex; } ;
struct btrfs_delayed_item {int readdir_list; int refs; } ;


 int BTRFS_I (struct inode*) ;
 struct btrfs_delayed_item* __btrfs_first_delayed_deletion_item (struct btrfs_delayed_node*) ;
 struct btrfs_delayed_item* __btrfs_first_delayed_insertion_item (struct btrfs_delayed_node*) ;
 struct btrfs_delayed_item* __btrfs_next_delayed_item (struct btrfs_delayed_item*) ;
 struct btrfs_delayed_node* btrfs_get_delayed_node (int ) ;
 int inode_lock (struct inode*) ;
 int inode_unlock_shared (struct inode*) ;
 int list_add_tail (int *,struct list_head*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int refcount_dec (int *) ;
 int refcount_inc (int *) ;

bool btrfs_readdir_get_delayed_items(struct inode *inode,
         struct list_head *ins_list,
         struct list_head *del_list)
{
 struct btrfs_delayed_node *delayed_node;
 struct btrfs_delayed_item *item;

 delayed_node = btrfs_get_delayed_node(BTRFS_I(inode));
 if (!delayed_node)
  return 0;





 inode_unlock_shared(inode);
 inode_lock(inode);

 mutex_lock(&delayed_node->mutex);
 item = __btrfs_first_delayed_insertion_item(delayed_node);
 while (item) {
  refcount_inc(&item->refs);
  list_add_tail(&item->readdir_list, ins_list);
  item = __btrfs_next_delayed_item(item);
 }

 item = __btrfs_first_delayed_deletion_item(delayed_node);
 while (item) {
  refcount_inc(&item->refs);
  list_add_tail(&item->readdir_list, del_list);
  item = __btrfs_next_delayed_item(item);
 }
 mutex_unlock(&delayed_node->mutex);
 refcount_dec(&delayed_node->refs);

 return 1;
}
