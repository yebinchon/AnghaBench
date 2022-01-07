
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_trans_handle {int dummy; } ;
struct btrfs_delayed_ref_root {int num_entries; } ;
struct btrfs_delayed_ref_node {scalar_t__ action; int ref_mod; int add_list; } ;
struct btrfs_delayed_ref_head {int lock; int ref_add_list; int ref_tree; } ;


 int ASSERT (int) ;
 scalar_t__ BTRFS_ADD_DELAYED_REF ;
 scalar_t__ BTRFS_DROP_DELAYED_REF ;
 int atomic_inc (int *) ;
 int drop_delayed_ref (struct btrfs_trans_handle*,struct btrfs_delayed_ref_root*,struct btrfs_delayed_ref_head*,struct btrfs_delayed_ref_node*) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct btrfs_delayed_ref_node* tree_insert (int *,struct btrfs_delayed_ref_node*) ;

__attribute__((used)) static int insert_delayed_ref(struct btrfs_trans_handle *trans,
         struct btrfs_delayed_ref_root *root,
         struct btrfs_delayed_ref_head *href,
         struct btrfs_delayed_ref_node *ref)
{
 struct btrfs_delayed_ref_node *exist;
 int mod;
 int ret = 0;

 spin_lock(&href->lock);
 exist = tree_insert(&href->ref_tree, ref);
 if (!exist)
  goto inserted;


 ret = 1;
 if (exist->action == ref->action) {
  mod = ref->ref_mod;
 } else {

  if (exist->ref_mod < ref->ref_mod) {
   exist->action = ref->action;
   mod = -exist->ref_mod;
   exist->ref_mod = ref->ref_mod;
   if (ref->action == BTRFS_ADD_DELAYED_REF)
    list_add_tail(&exist->add_list,
           &href->ref_add_list);
   else if (ref->action == BTRFS_DROP_DELAYED_REF) {
    ASSERT(!list_empty(&exist->add_list));
    list_del(&exist->add_list);
   } else {
    ASSERT(0);
   }
  } else
   mod = -ref->ref_mod;
 }
 exist->ref_mod += mod;


 if (exist->ref_mod == 0)
  drop_delayed_ref(trans, root, href, exist);
 spin_unlock(&href->lock);
 return ret;
inserted:
 if (ref->action == BTRFS_ADD_DELAYED_REF)
  list_add_tail(&ref->add_list, &href->ref_add_list);
 atomic_inc(&root->num_entries);
 spin_unlock(&href->lock);
 return ret;
}
