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
struct format_data_t {unsigned int blksize; int /*<<< orphan*/  intensity; void* stop_unit; void* start_unit; } ;
struct dasd_eckd_private {scalar_t__ uses_cdl; int /*<<< orphan*/  rdc_data; } ;
struct dasd_device {struct dasd_block* block; struct dasd_eckd_private* private; } ;
struct dasd_ccw_req {int /*<<< orphan*/  callback; TYPE_1__* block; struct request* callback_data; } ;
struct dasd_block {unsigned int bp_block; int s2b_shift; } ;
typedef  void* sector_t ;
struct TYPE_2__ {struct dasd_device* base; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_FMT_INT_COMPAT ; 
 int /*<<< orphan*/  EINVAL ; 
 struct dasd_ccw_req* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct dasd_ccw_req*) ; 
 int FUNC2 (struct request*) ; 
 int FUNC3 (struct request*) ; 
 struct dasd_ccw_req* FUNC4 (struct dasd_device*,struct dasd_device*,struct format_data_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dasd_eckd_ese_format_cb ; 
 int FUNC5 (struct dasd_device*,struct format_data_t*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (void*,unsigned int) ; 

__attribute__((used)) static struct dasd_ccw_req *
FUNC8(struct dasd_device *startdev, struct dasd_ccw_req *cqr)
{
	struct dasd_eckd_private *private;
	struct format_data_t fdata;
	unsigned int recs_per_trk;
	struct dasd_ccw_req *fcqr;
	struct dasd_device *base;
	struct dasd_block *block;
	unsigned int blksize;
	struct request *req;
	sector_t first_trk;
	sector_t last_trk;
	int rc;

	req = cqr->callback_data;
	base = cqr->block->base;
	private = base->private;
	block = base->block;
	blksize = block->bp_block;
	recs_per_trk = FUNC6(&private->rdc_data, 0, blksize);

	first_trk = FUNC2(req) >> block->s2b_shift;
	FUNC7(first_trk, recs_per_trk);
	last_trk =
		(FUNC2(req) + FUNC3(req) - 1) >> block->s2b_shift;
	FUNC7(last_trk, recs_per_trk);

	fdata.start_unit = first_trk;
	fdata.stop_unit = last_trk;
	fdata.blksize = blksize;
	fdata.intensity = private->uses_cdl ? DASD_FMT_INT_COMPAT : 0;

	rc = FUNC5(base, &fdata);
	if (rc)
		return FUNC0(-EINVAL);

	/*
	 * We're building the request with PAV disabled as we're reusing
	 * the former startdev.
	 */
	fcqr = FUNC4(base, startdev, &fdata, 0);
	if (FUNC1(fcqr))
		return fcqr;

	fcqr->callback = dasd_eckd_ese_format_cb;

	return fcqr;
}