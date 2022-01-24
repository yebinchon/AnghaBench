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
typedef  int /*<<< orphan*/  u64 ;
struct inode {int dummy; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  io_tree; scalar_t__ defrag_bytes; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int BTRFS_INODE_NODATACOW ; 
 int BTRFS_INODE_PREALLOC ; 
 int /*<<< orphan*/  EXTENT_DEFRAG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC2(struct inode *inode, u64 start, u64 end)
{

	if (!(FUNC0(inode)->flags & BTRFS_INODE_NODATACOW) &&
	    !(FUNC0(inode)->flags & BTRFS_INODE_PREALLOC))
		return 0;

	/*
	 * @defrag_bytes is a hint value, no spinlock held here,
	 * if is not zero, it means the file is defragging.
	 * Force cow if given extent needs to be defragged.
	 */
	if (FUNC0(inode)->defrag_bytes &&
	    FUNC1(&FUNC0(inode)->io_tree, start, end,
			   EXTENT_DEFRAG, 0, NULL))
		return 1;

	return 0;
}