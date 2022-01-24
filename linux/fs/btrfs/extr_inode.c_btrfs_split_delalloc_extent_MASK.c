#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct inode {int dummy; } ;
struct extent_state {int state; scalar_t__ end; scalar_t__ start; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ BTRFS_MAX_EXTENT_SIZE ; 
 int EXTENT_DELALLOC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct inode *inode,
				 struct extent_state *orig, u64 split)
{
	u64 size;

	/* not delalloc, ignore it */
	if (!(orig->state & EXTENT_DELALLOC))
		return;

	size = orig->end - orig->start + 1;
	if (size > BTRFS_MAX_EXTENT_SIZE) {
		u32 num_extents;
		u64 new_size;

		/*
		 * See the explanation in btrfs_merge_delalloc_extent, the same
		 * applies here, just in reverse.
		 */
		new_size = orig->end - split + 1;
		num_extents = FUNC2(new_size);
		new_size = split - orig->start;
		num_extents += FUNC2(new_size);
		if (FUNC2(size) >= num_extents)
			return;
	}

	FUNC3(&FUNC0(inode)->lock);
	FUNC1(FUNC0(inode), 1);
	FUNC4(&FUNC0(inode)->lock);
}