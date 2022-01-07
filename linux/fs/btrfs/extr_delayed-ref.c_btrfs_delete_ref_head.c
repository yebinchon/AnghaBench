
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_delayed_ref_root {int num_heads_ready; int num_heads; int num_entries; int href_root; int lock; } ;
struct btrfs_delayed_ref_head {scalar_t__ processing; int href_node; int lock; } ;


 int RB_CLEAR_NODE (int *) ;
 int atomic_dec (int *) ;
 int lockdep_assert_held (int *) ;
 int rb_erase_cached (int *,int *) ;

void btrfs_delete_ref_head(struct btrfs_delayed_ref_root *delayed_refs,
      struct btrfs_delayed_ref_head *head)
{
 lockdep_assert_held(&delayed_refs->lock);
 lockdep_assert_held(&head->lock);

 rb_erase_cached(&head->href_node, &delayed_refs->href_root);
 RB_CLEAR_NODE(&head->href_node);
 atomic_dec(&delayed_refs->num_entries);
 delayed_refs->num_heads--;
 if (head->processing == 0)
  delayed_refs->num_heads_ready--;
}
