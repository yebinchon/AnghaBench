
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct extent_buffer {int refs_lock; int bflags; int refs; } ;
struct btrfs_fs_info {int buffer_radix; } ;


 int EXTENT_BUFFER_STALE ;
 int PAGE_SHIFT ;
 scalar_t__ atomic_inc_not_zero (int *) ;
 int mark_extent_buffer_accessed (struct extent_buffer*,int *) ;
 struct extent_buffer* radix_tree_lookup (int *,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

struct extent_buffer *find_extent_buffer(struct btrfs_fs_info *fs_info,
      u64 start)
{
 struct extent_buffer *eb;

 rcu_read_lock();
 eb = radix_tree_lookup(&fs_info->buffer_radix,
          start >> PAGE_SHIFT);
 if (eb && atomic_inc_not_zero(&eb->refs)) {
  rcu_read_unlock();
  if (test_bit(EXTENT_BUFFER_STALE, &eb->bflags)) {
   spin_lock(&eb->refs_lock);
   spin_unlock(&eb->refs_lock);
  }
  mark_extent_buffer_accessed(eb, ((void*)0));
  return eb;
 }
 rcu_read_unlock();

 return ((void*)0);
}
