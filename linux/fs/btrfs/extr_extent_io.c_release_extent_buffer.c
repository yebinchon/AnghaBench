
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int start; int refs_lock; int rcu_head; int bflags; struct btrfs_fs_info* fs_info; int refs; } ;
struct btrfs_fs_info {int buffer_lock; int buffer_radix; } ;


 int EXTENT_BUFFER_IN_TREE ;
 int EXTENT_BUFFER_UNMAPPED ;
 int PAGE_SHIFT ;
 int WARN_ON (int) ;
 int __free_extent_buffer (struct extent_buffer*) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int btrfs_release_extent_buffer_pages (struct extent_buffer*) ;
 int btrfs_release_extent_buffer_rcu ;
 int call_rcu (int *,int ) ;
 int lockdep_assert_held (int *) ;
 int radix_tree_delete (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int release_extent_buffer(struct extent_buffer *eb)
{
 lockdep_assert_held(&eb->refs_lock);

 WARN_ON(atomic_read(&eb->refs) == 0);
 if (atomic_dec_and_test(&eb->refs)) {
  if (test_and_clear_bit(EXTENT_BUFFER_IN_TREE, &eb->bflags)) {
   struct btrfs_fs_info *fs_info = eb->fs_info;

   spin_unlock(&eb->refs_lock);

   spin_lock(&fs_info->buffer_lock);
   radix_tree_delete(&fs_info->buffer_radix,
       eb->start >> PAGE_SHIFT);
   spin_unlock(&fs_info->buffer_lock);
  } else {
   spin_unlock(&eb->refs_lock);
  }


  btrfs_release_extent_buffer_pages(eb);






  call_rcu(&eb->rcu_head, btrfs_release_extent_buffer_rcu);
  return 1;
 }
 spin_unlock(&eb->refs_lock);

 return 0;
}
