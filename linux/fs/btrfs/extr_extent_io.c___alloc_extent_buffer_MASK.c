#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct extent_buffer {unsigned long len; int lock_nested; scalar_t__ write_locks; int /*<<< orphan*/  read_locks; int /*<<< orphan*/  spinning_readers; scalar_t__ spinning_writers; int /*<<< orphan*/  io_pages; int /*<<< orphan*/  refs; int /*<<< orphan*/  refs_lock; int /*<<< orphan*/  leak_list; int /*<<< orphan*/  read_lock_wq; int /*<<< orphan*/  write_lock_wq; scalar_t__ blocking_writers; int /*<<< orphan*/  blocking_readers; int /*<<< orphan*/  lock; scalar_t__ bflags; struct btrfs_fs_info* fs_info; int /*<<< orphan*/  start; } ;
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 unsigned long BTRFS_MAX_METADATA_BLOCKSIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int GFP_NOFS ; 
 unsigned long MAX_INLINE_EXTENT_BUFFER_SIZE ; 
 int __GFP_NOFAIL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  buffers ; 
 int /*<<< orphan*/  extent_buffer_cache ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct extent_buffer* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct extent_buffer *
FUNC8(struct btrfs_fs_info *fs_info, u64 start,
		      unsigned long len)
{
	struct extent_buffer *eb = NULL;

	eb = FUNC5(extent_buffer_cache, GFP_NOFS|__GFP_NOFAIL);
	eb->start = start;
	eb->len = len;
	eb->fs_info = fs_info;
	eb->bflags = 0;
	FUNC6(&eb->lock);
	FUNC2(&eb->blocking_readers, 0);
	eb->blocking_writers = 0;
	eb->lock_nested = false;
	FUNC4(&eb->write_lock_wq);
	FUNC4(&eb->read_lock_wq);

	FUNC3(&eb->leak_list, &buffers);

	FUNC7(&eb->refs_lock);
	FUNC2(&eb->refs, 1);
	FUNC2(&eb->io_pages, 0);

	/*
	 * Sanity checks, currently the maximum is 64k covered by 16x 4k pages
	 */
	FUNC1(BTRFS_MAX_METADATA_BLOCKSIZE
		> MAX_INLINE_EXTENT_BUFFER_SIZE);
	FUNC0(len > MAX_INLINE_EXTENT_BUFFER_SIZE);

#ifdef CONFIG_BTRFS_DEBUG
	eb->spinning_writers = 0;
	atomic_set(&eb->spinning_readers, 0);
	atomic_set(&eb->read_locks, 0);
	eb->write_locks = 0;
#endif

	return eb;
}