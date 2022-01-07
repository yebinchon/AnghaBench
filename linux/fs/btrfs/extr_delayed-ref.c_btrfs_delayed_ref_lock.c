
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_delayed_ref_root {int lock; } ;
struct btrfs_delayed_ref_head {int mutex; int href_node; int refs; } ;


 int EAGAIN ;
 scalar_t__ RB_EMPTY_NODE (int *) ;
 int btrfs_put_delayed_ref_head (struct btrfs_delayed_ref_head*) ;
 int lockdep_assert_held (int *) ;
 int mutex_lock (int *) ;
 scalar_t__ mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int refcount_inc (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int btrfs_delayed_ref_lock(struct btrfs_delayed_ref_root *delayed_refs,
      struct btrfs_delayed_ref_head *head)
{
 lockdep_assert_held(&delayed_refs->lock);
 if (mutex_trylock(&head->mutex))
  return 0;

 refcount_inc(&head->refs);
 spin_unlock(&delayed_refs->lock);

 mutex_lock(&head->mutex);
 spin_lock(&delayed_refs->lock);
 if (RB_EMPTY_NODE(&head->href_node)) {
  mutex_unlock(&head->mutex);
  btrfs_put_delayed_ref_head(head);
  return -EAGAIN;
 }
 btrfs_put_delayed_ref_head(head);
 return 0;
}
