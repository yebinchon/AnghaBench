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
struct scrub_page {int physical_for_dev_replace; scalar_t__ logical; int /*<<< orphan*/  page; } ;
struct scrub_ctx {scalar_t__ pages_per_wr_bio; int /*<<< orphan*/  wr_lock; TYPE_1__* wr_tgtdev; struct scrub_bio* wr_curr_bio; } ;
struct scrub_bio {int page_count; int physical; scalar_t__ logical; struct scrub_page** pagev; struct bio* bio; scalar_t__ status; TYPE_1__* dev; struct scrub_ctx* sctx; } ;
struct TYPE_4__ {int bi_sector; } ;
struct bio {int /*<<< orphan*/  bi_opf; TYPE_2__ bi_iter; int /*<<< orphan*/  bi_end_io; struct scrub_bio* bi_private; } ;
struct TYPE_3__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int FUNC0 (struct bio*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ) ; 
 struct bio* FUNC3 (scalar_t__) ; 
 struct scrub_bio* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct scrub_page*) ; 
 int /*<<< orphan*/  scrub_wr_bio_end_io ; 
 int /*<<< orphan*/  FUNC8 (struct scrub_ctx*) ; 

__attribute__((used)) static int FUNC9(struct scrub_ctx *sctx,
				    struct scrub_page *spage)
{
	struct scrub_bio *sbio;
	int ret;

	FUNC5(&sctx->wr_lock);
again:
	if (!sctx->wr_curr_bio) {
		sctx->wr_curr_bio = FUNC4(sizeof(*sctx->wr_curr_bio),
					      GFP_KERNEL);
		if (!sctx->wr_curr_bio) {
			FUNC6(&sctx->wr_lock);
			return -ENOMEM;
		}
		sctx->wr_curr_bio->sctx = sctx;
		sctx->wr_curr_bio->page_count = 0;
	}
	sbio = sctx->wr_curr_bio;
	if (sbio->page_count == 0) {
		struct bio *bio;

		sbio->physical = spage->physical_for_dev_replace;
		sbio->logical = spage->logical;
		sbio->dev = sctx->wr_tgtdev;
		bio = sbio->bio;
		if (!bio) {
			bio = FUNC3(sctx->pages_per_wr_bio);
			sbio->bio = bio;
		}

		bio->bi_private = sbio;
		bio->bi_end_io = scrub_wr_bio_end_io;
		FUNC2(bio, sbio->dev->bdev);
		bio->bi_iter.bi_sector = sbio->physical >> 9;
		bio->bi_opf = REQ_OP_WRITE;
		sbio->status = 0;
	} else if (sbio->physical + sbio->page_count * PAGE_SIZE !=
		   spage->physical_for_dev_replace ||
		   sbio->logical + sbio->page_count * PAGE_SIZE !=
		   spage->logical) {
		FUNC8(sctx);
		goto again;
	}

	ret = FUNC0(sbio->bio, spage->page, PAGE_SIZE, 0);
	if (ret != PAGE_SIZE) {
		if (sbio->page_count < 1) {
			FUNC1(sbio->bio);
			sbio->bio = NULL;
			FUNC6(&sctx->wr_lock);
			return -EIO;
		}
		FUNC8(sctx);
		goto again;
	}

	sbio->pagev[sbio->page_count] = spage;
	FUNC7(spage);
	sbio->page_count++;
	if (sbio->page_count == sctx->pages_per_wr_bio)
		FUNC8(sctx);
	FUNC6(&sctx->wr_lock);

	return 0;
}