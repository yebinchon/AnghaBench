#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct extent_state {int dummy; } ;
struct extent_io_tree {int dummy; } ;
struct extent_buffer {scalar_t__ len; scalar_t__ start; int /*<<< orphan*/  fs_info; } ;
struct TYPE_2__ {scalar_t__ journal_info; } ;

/* Variables and functions */
 scalar_t__ BTRFS_SEND_TRANS_STUB ; 
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct extent_buffer*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC6 (struct extent_buffer*) ; 
 scalar_t__ FUNC7 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC8 (struct extent_io_tree*,scalar_t__,scalar_t__,struct extent_state**) ; 
 int /*<<< orphan*/  FUNC9 (struct extent_io_tree*,scalar_t__,scalar_t__,struct extent_state**) ; 

__attribute__((used)) static int FUNC10(struct extent_io_tree *io_tree,
				 struct extent_buffer *eb, u64 parent_transid,
				 int atomic)
{
	struct extent_state *cached_state = NULL;
	int ret;
	bool need_lock = (current->journal_info == BTRFS_SEND_TRANS_STUB);

	if (!parent_transid || FUNC1(eb) == parent_transid)
		return 0;

	if (atomic)
		return -EAGAIN;

	if (need_lock) {
		FUNC3(eb);
		FUNC2(eb);
	}

	FUNC8(io_tree, eb->start, eb->start + eb->len - 1,
			 &cached_state);
	if (FUNC7(eb) &&
	    FUNC1(eb) == parent_transid) {
		ret = 0;
		goto out;
	}
	FUNC0(eb->fs_info,
		"parent transid verify failed on %llu wanted %llu found %llu",
			eb->start,
			parent_transid, FUNC1(eb));
	ret = 1;

	/*
	 * Things reading via commit roots that don't have normal protection,
	 * like send, can have a really old block in cache that may point at a
	 * block that has been freed and re-allocated.  So don't clear uptodate
	 * if we find an eb that is under IO (dirty/writeback) because we could
	 * end up reading in the stale data and then writing it back out and
	 * making everybody very sad.
	 */
	if (!FUNC6(eb))
		FUNC5(eb);
out:
	FUNC9(io_tree, eb->start, eb->start + eb->len - 1,
			     &cached_state);
	if (need_lock)
		FUNC4(eb);
	return ret;
}