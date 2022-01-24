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
struct request {int dummy; } ;
struct dasd_device {int default_expires; int /*<<< orphan*/  default_retries; } ;
struct dasd_ccw_req {int expires; int /*<<< orphan*/  status; int /*<<< orphan*/  buildclk; int /*<<< orphan*/  retries; struct dasd_block* block; struct dasd_device* memdev; struct dasd_device* startdev; int /*<<< orphan*/  flags; struct LO_fba_data* data; struct ccw1* cpaddr; } ;
struct dasd_block {unsigned int bp_block; int s2b_shift; TYPE_1__* base; } ;
struct ccw1 {int /*<<< orphan*/  flags; } ;
struct LO_fba_data {int dummy; } ;
struct DE_fba_data {int dummy; } ;
typedef  int sector_t ;
struct TYPE_2__ {int features; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  CCW_FLAG_CC ; 
 int /*<<< orphan*/  DASD_CQR_FILLED ; 
 int /*<<< orphan*/  DASD_CQR_FLAGS_FAILFAST ; 
 int /*<<< orphan*/  DASD_FBA_MAGIC ; 
 int DASD_FEATURE_FAILFAST ; 
 int HZ ; 
 scalar_t__ FUNC1 (struct dasd_ccw_req*) ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 scalar_t__ FUNC3 (struct request*) ; 
 int FUNC4 (struct request*) ; 
 int FUNC5 (struct request*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int,int,unsigned int) ; 
 struct dasd_ccw_req* FUNC9 (int /*<<< orphan*/ ,int,int,struct dasd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct LO_fba_data*,int /*<<< orphan*/ ,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dasd_ccw_req *FUNC14(
						struct dasd_device *memdev,
						struct dasd_block *block,
						struct request *req)
{
	struct LO_fba_data *LO_data;
	struct dasd_ccw_req *cqr;
	struct ccw1 *ccw;

	sector_t wz_stop = 0, d_stop = 0;
	sector_t first_rec, last_rec;

	unsigned int blksize = block->bp_block;
	unsigned int blocks_per_page;
	int wz_count = 0;
	int d_count = 0;
	int cur_pos = 0; /* Current position within the extent */
	int count = 0;
	int cplength;
	int datasize;
	int nr_ccws;

	first_rec = FUNC4(req) >> block->s2b_shift;
	last_rec =
		(FUNC4(req) + FUNC5(req) - 1) >> block->s2b_shift;
	count = last_rec - first_rec + 1;

	blocks_per_page = FUNC0(blksize);
	nr_ccws = FUNC8(first_rec, last_rec, blocks_per_page);

	/* define extent + nr_ccws * locate record + nr_ccws * single CCW */
	cplength = 1 + 2 * nr_ccws;
	datasize = sizeof(struct DE_fba_data) +
		nr_ccws * (sizeof(struct LO_fba_data) + sizeof(struct ccw1));

	cqr = FUNC9(DASD_FBA_MAGIC, cplength, datasize, memdev,
				   FUNC2(req));
	if (FUNC1(cqr))
		return cqr;

	ccw = cqr->cpaddr;

	FUNC10(ccw++, cqr->data, WRITE, blksize, first_rec, count);
	LO_data = cqr->data + sizeof(struct DE_fba_data);

	/* First part is not aligned. Calculate range to write zeroes. */
	if (first_rec % blocks_per_page != 0) {
		wz_stop = first_rec + blocks_per_page -
			(first_rec % blocks_per_page) - 1;
		if (wz_stop > last_rec)
			wz_stop = last_rec;
		wz_count = wz_stop - first_rec + 1;

		ccw[-1].flags |= CCW_FLAG_CC;
		FUNC12(ccw++, LO_data++, WRITE, cur_pos, wz_count);

		ccw[-1].flags |= CCW_FLAG_CC;
		FUNC7(ccw++, wz_count * blksize);

		cur_pos = wz_count;
	}

	/* We can do proper discard when we've got at least blocks_per_page blocks. */
	if (last_rec - (first_rec + cur_pos) + 1 >= blocks_per_page) {
		/* is last record at page boundary? */
		if ((last_rec - blocks_per_page + 1) % blocks_per_page != 0)
			d_stop = last_rec - ((last_rec - blocks_per_page + 1) %
					     blocks_per_page);
		else
			d_stop = last_rec;

		d_count = d_stop - (first_rec + cur_pos) + 1;

		ccw[-1].flags |= CCW_FLAG_CC;
		FUNC12(ccw++, LO_data++, WRITE, cur_pos, d_count);

		ccw[-1].flags |= CCW_FLAG_CC;
		FUNC6(ccw++);

		cur_pos += d_count;
	}

	/* We might still have some bits left which need to be zeroed. */
	if (cur_pos == 0 || first_rec + cur_pos - 1 < last_rec) {
		if (d_stop != 0)
			wz_count = last_rec - d_stop;
		else if (wz_stop != 0)
			wz_count = last_rec - wz_stop;
		else
			wz_count = count;

		ccw[-1].flags |= CCW_FLAG_CC;
		FUNC12(ccw++, LO_data++, WRITE, cur_pos, wz_count);

		ccw[-1].flags |= CCW_FLAG_CC;
		FUNC7(ccw++, wz_count * blksize);
	}

	if (FUNC3(req) ||
	    block->base->features & DASD_FEATURE_FAILFAST)
		FUNC13(DASD_CQR_FLAGS_FAILFAST, &cqr->flags);

	cqr->startdev = memdev;
	cqr->memdev = memdev;
	cqr->block = block;
	cqr->expires = memdev->default_expires * HZ;	/* default 5 minutes */
	cqr->retries = memdev->default_retries;
	cqr->buildclk = FUNC11();
	cqr->status = DASD_CQR_FILLED;

	return cqr;
}