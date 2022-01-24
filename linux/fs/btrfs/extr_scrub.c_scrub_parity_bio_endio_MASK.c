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
struct scrub_parity {int /*<<< orphan*/  work; int /*<<< orphan*/  nsectors; int /*<<< orphan*/  dbitmap; int /*<<< orphan*/  ebitmap; TYPE_1__* sctx; } ;
struct btrfs_fs_info {int /*<<< orphan*/  scrub_parity_workers; } ;
struct bio {scalar_t__ bi_status; scalar_t__ bi_private; } ;
struct TYPE_2__ {struct btrfs_fs_info* fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  btrfs_scrubparity_helper ; 
 int /*<<< orphan*/  scrub_parity_bio_endio_worker ; 

__attribute__((used)) static void FUNC4(struct bio *bio)
{
	struct scrub_parity *sparity = (struct scrub_parity *)bio->bi_private;
	struct btrfs_fs_info *fs_info = sparity->sctx->fs_info;

	if (bio->bi_status)
		FUNC1(sparity->ebitmap, sparity->ebitmap, sparity->dbitmap,
			  sparity->nsectors);

	FUNC0(bio);

	FUNC2(&sparity->work, btrfs_scrubparity_helper,
			scrub_parity_bio_endio_worker, NULL, NULL);
	FUNC3(fs_info->scrub_parity_workers, &sparity->work);
}