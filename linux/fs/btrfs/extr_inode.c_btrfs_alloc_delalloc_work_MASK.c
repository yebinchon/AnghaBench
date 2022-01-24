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
struct inode {int dummy; } ;
struct btrfs_delalloc_work {int /*<<< orphan*/  work; struct inode* inode; int /*<<< orphan*/  list; int /*<<< orphan*/  completion; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  btrfs_flush_delalloc_helper ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  btrfs_run_delalloc_work ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct btrfs_delalloc_work* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct btrfs_delalloc_work *FUNC4(struct inode *inode)
{
	struct btrfs_delalloc_work *work;

	work = FUNC3(sizeof(*work), GFP_NOFS);
	if (!work)
		return NULL;

	FUNC2(&work->completion);
	FUNC0(&work->list);
	work->inode = inode;
	FUNC1(&work->work, btrfs_flush_delalloc_helper,
			btrfs_run_delalloc_work, NULL, NULL);

	return work;
}