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
struct reada_control {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  elems; int /*<<< orphan*/  wait; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int /*<<< orphan*/  reada_works_cnt; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reada_control_release ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 

int FUNC4(void *handle)
{
	struct reada_control *rc = handle;
	struct btrfs_fs_info *fs_info = rc->fs_info;

	while (FUNC0(&rc->elems)) {
		if (!FUNC0(&fs_info->reada_works_cnt))
			FUNC2(fs_info);
		FUNC3(rc->wait, FUNC0(&rc->elems) == 0,
				   (HZ + 9) / 10);
	}

	FUNC1(&rc->refcnt, reada_control_release);

	return 0;
}