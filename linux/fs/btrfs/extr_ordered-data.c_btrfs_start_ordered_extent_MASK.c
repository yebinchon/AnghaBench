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
typedef  scalar_t__ u64 ;
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct btrfs_ordered_extent {int /*<<< orphan*/  flags; int /*<<< orphan*/  wait; scalar_t__ len; scalar_t__ file_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_ORDERED_COMPLETE ; 
 int /*<<< orphan*/  BTRFS_ORDERED_DIRECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct btrfs_ordered_extent*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct inode *inode,
				       struct btrfs_ordered_extent *entry,
				       int wait)
{
	u64 start = entry->file_offset;
	u64 end = start + entry->len - 1;

	FUNC2(inode, entry);

	/*
	 * pages in the range can be dirty, clean or writeback.  We
	 * start IO on any dirty ones so the wait doesn't stall waiting
	 * for the flusher thread to find them
	 */
	if (!FUNC1(BTRFS_ORDERED_DIRECT, &entry->flags))
		FUNC0(inode->i_mapping, start, end);
	if (wait) {
		FUNC3(entry->wait, FUNC1(BTRFS_ORDERED_COMPLETE,
						 &entry->flags));
	}
}