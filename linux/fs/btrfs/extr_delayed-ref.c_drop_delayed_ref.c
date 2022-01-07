
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_trans_handle {int dummy; } ;
struct btrfs_delayed_ref_root {int num_entries; } ;
struct btrfs_delayed_ref_node {scalar_t__ in_tree; int add_list; int ref_node; } ;
struct btrfs_delayed_ref_head {int ref_tree; int lock; } ;


 int RB_CLEAR_NODE (int *) ;
 int atomic_dec (int *) ;
 int btrfs_put_delayed_ref (struct btrfs_delayed_ref_node*) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int lockdep_assert_held (int *) ;
 int rb_erase_cached (int *,int *) ;

__attribute__((used)) static inline void drop_delayed_ref(struct btrfs_trans_handle *trans,
        struct btrfs_delayed_ref_root *delayed_refs,
        struct btrfs_delayed_ref_head *head,
        struct btrfs_delayed_ref_node *ref)
{
 lockdep_assert_held(&head->lock);
 rb_erase_cached(&ref->ref_node, &head->ref_tree);
 RB_CLEAR_NODE(&ref->ref_node);
 if (!list_empty(&ref->add_list))
  list_del(&ref->add_list);
 ref->in_tree = 0;
 btrfs_put_delayed_ref(ref);
 atomic_dec(&delayed_refs->num_entries);
}
