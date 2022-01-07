
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct extent_state {int dummy; } ;
struct extent_io_tree {int dummy; } ;
struct btrfs_fs_info {struct extent_io_tree* freed_extents; int unused_bg_unpin_mutex; } ;


 int EXTENT_DIRTY ;
 int btrfs_error_unpin_extent_range (struct btrfs_fs_info*,int ,int ) ;
 int clear_extent_dirty (struct extent_io_tree*,int ,int ,struct extent_state**) ;
 int cond_resched () ;
 int find_first_extent_bit (struct extent_io_tree*,int ,int *,int *,int ,struct extent_state**) ;
 int free_extent_state (struct extent_state*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int btrfs_destroy_pinned_extent(struct btrfs_fs_info *fs_info,
           struct extent_io_tree *pinned_extents)
{
 struct extent_io_tree *unpin;
 u64 start;
 u64 end;
 int ret;
 bool loop = 1;

 unpin = pinned_extents;
again:
 while (1) {
  struct extent_state *cached_state = ((void*)0);







  mutex_lock(&fs_info->unused_bg_unpin_mutex);
  ret = find_first_extent_bit(unpin, 0, &start, &end,
         EXTENT_DIRTY, &cached_state);
  if (ret) {
   mutex_unlock(&fs_info->unused_bg_unpin_mutex);
   break;
  }

  clear_extent_dirty(unpin, start, end, &cached_state);
  free_extent_state(cached_state);
  btrfs_error_unpin_extent_range(fs_info, start, end);
  mutex_unlock(&fs_info->unused_bg_unpin_mutex);
  cond_resched();
 }

 if (loop) {
  if (unpin == &fs_info->freed_extents[0])
   unpin = &fs_info->freed_extents[1];
  else
   unpin = &fs_info->freed_extents[0];
  loop = 0;
  goto again;
 }

 return 0;
}
