#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scrub_block {int page_count; scalar_t__ sparity; TYPE_1__* sctx; } ;
struct TYPE_4__ {int /*<<< orphan*/  num_write_errors; } ;
struct btrfs_fs_info {TYPE_2__ dev_replace; } ;
struct TYPE_3__ {struct btrfs_fs_info* fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct scrub_block*,int) ; 

__attribute__((used)) static void FUNC2(struct scrub_block *sblock)
{
	struct btrfs_fs_info *fs_info = sblock->sctx->fs_info;
	int page_num;

	/*
	 * This block is used for the check of the parity on the source device,
	 * so the data needn't be written into the destination device.
	 */
	if (sblock->sparity)
		return;

	for (page_num = 0; page_num < sblock->page_count; page_num++) {
		int ret;

		ret = FUNC1(sblock, page_num);
		if (ret)
			FUNC0(&fs_info->dev_replace.num_write_errors);
	}
}