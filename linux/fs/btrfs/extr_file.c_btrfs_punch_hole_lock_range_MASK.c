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
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct extent_state {int dummy; } ;
struct btrfs_ordered_extent {scalar_t__ const file_offset; scalar_t__ const len; } ;
struct TYPE_2__ {int /*<<< orphan*/  io_tree; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct btrfs_ordered_extent* FUNC1 (struct inode*,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_ordered_extent*) ; 
 int FUNC3 (struct inode*,scalar_t__ const,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__ const,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__ const,scalar_t__ const,struct extent_state**) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,scalar_t__ const,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__ const,scalar_t__ const,struct extent_state**) ; 

__attribute__((used)) static int FUNC8(struct inode *inode,
				       const u64 lockstart,
				       const u64 lockend,
				       struct extent_state **cached_state)
{
	while (1) {
		struct btrfs_ordered_extent *ordered;
		int ret;

		FUNC6(inode, lockstart, lockend);

		FUNC5(&FUNC0(inode)->io_tree, lockstart, lockend,
				 cached_state);
		ordered = FUNC1(inode, lockend);

		/*
		 * We need to make sure we have no ordered extents in this range
		 * and nobody raced in and read a page in this range, if we did
		 * we need to try again.
		 */
		if ((!ordered ||
		    (ordered->file_offset + ordered->len <= lockstart ||
		     ordered->file_offset > lockend)) &&
		     !FUNC4(inode->i_mapping,
					     lockstart, lockend)) {
			if (ordered)
				FUNC2(ordered);
			break;
		}
		if (ordered)
			FUNC2(ordered);
		FUNC7(&FUNC0(inode)->io_tree, lockstart,
				     lockend, cached_state);
		ret = FUNC3(inode, lockstart,
					       lockend - lockstart + 1);
		if (ret)
			return ret;
	}
	return 0;
}