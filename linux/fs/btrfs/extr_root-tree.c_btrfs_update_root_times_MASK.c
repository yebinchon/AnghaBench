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
struct timespec64 {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct btrfs_trans_handle {int /*<<< orphan*/  transid; } ;
struct btrfs_root_item {int /*<<< orphan*/  ctime; } ;
struct btrfs_root {int /*<<< orphan*/  root_item_lock; struct btrfs_root_item root_item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btrfs_root_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct timespec64*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct btrfs_trans_handle *trans,
			     struct btrfs_root *root)
{
	struct btrfs_root_item *item = &root->root_item;
	struct timespec64 ct;

	FUNC3(&ct);
	FUNC4(&root->root_item_lock);
	FUNC0(item, trans->transid);
	FUNC2(&item->ctime, ct.tv_sec);
	FUNC1(&item->ctime, ct.tv_nsec);
	FUNC5(&root->root_item_lock);
}