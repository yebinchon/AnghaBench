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
struct btrfs_root {scalar_t__ node; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_ROOT_IN_RADIX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct btrfs_root *root)
{
	if (!root)
		return;
	/* Will be freed by btrfs_free_fs_roots */
	if (FUNC0(FUNC3(BTRFS_ROOT_IN_RADIX, &root->state)))
		return;
	if (root->node) {
		/* One for allocate_extent_buffer */
		FUNC1(root->node);
	}
	FUNC2(root);
}