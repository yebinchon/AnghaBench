
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct extent_buffer {unsigned long len; int lock_nested; scalar_t__ write_locks; int read_locks; int spinning_readers; scalar_t__ spinning_writers; int io_pages; int refs; int refs_lock; int leak_list; int read_lock_wq; int write_lock_wq; scalar_t__ blocking_writers; int blocking_readers; int lock; scalar_t__ bflags; struct btrfs_fs_info* fs_info; int start; } ;
struct btrfs_fs_info {int dummy; } ;


 unsigned long BTRFS_MAX_METADATA_BLOCKSIZE ;
 int BUG_ON (int) ;
 int BUILD_BUG_ON (int) ;
 int GFP_NOFS ;
 unsigned long MAX_INLINE_EXTENT_BUFFER_SIZE ;
 int __GFP_NOFAIL ;
 int atomic_set (int *,int) ;
 int btrfs_leak_debug_add (int *,int *) ;
 int buffers ;
 int extent_buffer_cache ;
 int init_waitqueue_head (int *) ;
 struct extent_buffer* kmem_cache_zalloc (int ,int) ;
 int rwlock_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct extent_buffer *
__alloc_extent_buffer(struct btrfs_fs_info *fs_info, u64 start,
        unsigned long len)
{
 struct extent_buffer *eb = ((void*)0);

 eb = kmem_cache_zalloc(extent_buffer_cache, GFP_NOFS|__GFP_NOFAIL);
 eb->start = start;
 eb->len = len;
 eb->fs_info = fs_info;
 eb->bflags = 0;
 rwlock_init(&eb->lock);
 atomic_set(&eb->blocking_readers, 0);
 eb->blocking_writers = 0;
 eb->lock_nested = 0;
 init_waitqueue_head(&eb->write_lock_wq);
 init_waitqueue_head(&eb->read_lock_wq);

 btrfs_leak_debug_add(&eb->leak_list, &buffers);

 spin_lock_init(&eb->refs_lock);
 atomic_set(&eb->refs, 1);
 atomic_set(&eb->io_pages, 0);




 BUILD_BUG_ON(BTRFS_MAX_METADATA_BLOCKSIZE
  > MAX_INLINE_EXTENT_BUFFER_SIZE);
 BUG_ON(len > MAX_INLINE_EXTENT_BUFFER_SIZE);
 return eb;
}
