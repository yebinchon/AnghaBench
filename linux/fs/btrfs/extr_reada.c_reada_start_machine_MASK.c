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
struct reada_machine_work {int /*<<< orphan*/  work; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int /*<<< orphan*/  reada_works_cnt; int /*<<< orphan*/  readahead_workers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  btrfs_readahead_helper ; 
 struct reada_machine_work* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reada_start_machine_worker ; 

__attribute__((used)) static void FUNC5(struct btrfs_fs_info *fs_info)
{
	struct reada_machine_work *rmw;

	rmw = FUNC4(sizeof(*rmw), GFP_KERNEL);
	if (!rmw) {
		/* FIXME we cannot handle this properly right now */
		FUNC0();
	}
	FUNC2(&rmw->work, btrfs_readahead_helper,
			reada_start_machine_worker, NULL, NULL);
	rmw->fs_info = fs_info;

	FUNC3(fs_info->readahead_workers, &rmw->work);
	FUNC1(&fs_info->reada_works_cnt);
}