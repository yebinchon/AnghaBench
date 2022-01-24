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
struct scrub_block {int /*<<< orphan*/  work; scalar_t__ no_io_error_seen; TYPE_1__* sctx; } ;
struct btrfs_fs_info {int /*<<< orphan*/  scrub_workers; } ;
struct bio {scalar_t__ bi_status; struct scrub_block* bi_private; } ;
struct TYPE_2__ {struct btrfs_fs_info* fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct bio *bio)
{
	struct scrub_block *sblock = bio->bi_private;
	struct btrfs_fs_info *fs_info = sblock->sctx->fs_info;

	if (bio->bi_status)
		sblock->no_io_error_seen = 0;

	FUNC0(bio);

	FUNC1(fs_info->scrub_workers, &sblock->work);
}