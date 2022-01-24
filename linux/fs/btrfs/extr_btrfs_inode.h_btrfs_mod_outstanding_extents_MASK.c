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
struct btrfs_inode {int outstanding_extents; int /*<<< orphan*/  root; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btrfs_inode*) ; 
 scalar_t__ FUNC1 (struct btrfs_inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC4(struct btrfs_inode *inode,
						 int mod)
{
	FUNC2(&inode->lock);
	inode->outstanding_extents += mod;
	if (FUNC1(inode))
		return;
	FUNC3(inode->root, FUNC0(inode),
						  mod);
}