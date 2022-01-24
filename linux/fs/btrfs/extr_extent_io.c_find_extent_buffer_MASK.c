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
typedef  int u64 ;
struct extent_buffer {int /*<<< orphan*/  refs_lock; int /*<<< orphan*/  bflags; int /*<<< orphan*/  refs; } ;
struct btrfs_fs_info {int /*<<< orphan*/  buffer_radix; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXTENT_BUFFER_STALE ; 
 int PAGE_SHIFT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct extent_buffer*,int /*<<< orphan*/ *) ; 
 struct extent_buffer* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct extent_buffer *FUNC8(struct btrfs_fs_info *fs_info,
					 u64 start)
{
	struct extent_buffer *eb;

	FUNC3();
	eb = FUNC2(&fs_info->buffer_radix,
			       start >> PAGE_SHIFT);
	if (eb && FUNC0(&eb->refs)) {
		FUNC4();
		/*
		 * Lock our eb's refs_lock to avoid races with
		 * free_extent_buffer. When we get our eb it might be flagged
		 * with EXTENT_BUFFER_STALE and another task running
		 * free_extent_buffer might have seen that flag set,
		 * eb->refs == 2, that the buffer isn't under IO (dirty and
		 * writeback flags not set) and it's still in the tree (flag
		 * EXTENT_BUFFER_TREE_REF set), therefore being in the process
		 * of decrementing the extent buffer's reference count twice.
		 * So here we could race and increment the eb's reference count,
		 * clear its stale flag, mark it as dirty and drop our reference
		 * before the other task finishes executing free_extent_buffer,
		 * which would later result in an attempt to free an extent
		 * buffer that is dirty.
		 */
		if (FUNC7(EXTENT_BUFFER_STALE, &eb->bflags)) {
			FUNC5(&eb->refs_lock);
			FUNC6(&eb->refs_lock);
		}
		FUNC1(eb, NULL);
		return eb;
	}
	FUNC4();

	return NULL;
}