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
struct extent_buffer {int start; int /*<<< orphan*/  refs_lock; int /*<<< orphan*/  rcu_head; int /*<<< orphan*/  bflags; struct btrfs_fs_info* fs_info; int /*<<< orphan*/  refs; } ;
struct btrfs_fs_info {int /*<<< orphan*/  buffer_lock; int /*<<< orphan*/  buffer_radix; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXTENT_BUFFER_IN_TREE ; 
 int /*<<< orphan*/  EXTENT_BUFFER_UNMAPPED ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct extent_buffer*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*) ; 
 int /*<<< orphan*/  btrfs_release_extent_buffer_rcu ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct extent_buffer *eb)
{
	FUNC6(&eb->refs_lock);

	FUNC0(FUNC3(&eb->refs) == 0);
	if (FUNC2(&eb->refs)) {
		if (FUNC10(EXTENT_BUFFER_IN_TREE, &eb->bflags)) {
			struct btrfs_fs_info *fs_info = eb->fs_info;

			FUNC9(&eb->refs_lock);

			FUNC8(&fs_info->buffer_lock);
			FUNC7(&fs_info->buffer_radix,
					  eb->start >> PAGE_SHIFT);
			FUNC9(&fs_info->buffer_lock);
		} else {
			FUNC9(&eb->refs_lock);
		}

		/* Should be safe to release our pages at this point */
		FUNC4(eb);
#ifdef CONFIG_BTRFS_FS_RUN_SANITY_TESTS
		if (unlikely(test_bit(EXTENT_BUFFER_UNMAPPED, &eb->bflags))) {
			__free_extent_buffer(eb);
			return 1;
		}
#endif
		FUNC5(&eb->rcu_head, btrfs_release_extent_buffer_rcu);
		return 1;
	}
	FUNC9(&eb->refs_lock);

	return 0;
}