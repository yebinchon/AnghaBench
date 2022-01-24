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
struct dasd_device {int dummy; } ;
struct dasd_ccw_req {scalar_t__ status; unsigned long startclk; unsigned long stopclk; struct dasd_device* startdev; int /*<<< orphan*/  memdev; int /*<<< orphan*/  blocklist; struct dasd_ccw_req* refers; int /*<<< orphan*/ * function; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DASD_CQR_DONE ; 
 scalar_t__ DASD_CQR_FAILED ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_ccw_req*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct dasd_ccw_req *FUNC4(struct dasd_ccw_req *cqr)
{
	int success;
	unsigned long startclk, stopclk;
	struct dasd_device *startdev;

	FUNC0(cqr->refers == NULL || cqr->function == NULL);

	success = cqr->status == DASD_CQR_DONE;
	startclk = cqr->startclk;
	stopclk = cqr->stopclk;
	startdev = cqr->startdev;

	/* free all ERPs - but NOT the original cqr */
	while (cqr->refers != NULL) {
		struct dasd_ccw_req *refers;

		refers = cqr->refers;
		/* remove the request from the block queue */
		FUNC3(&cqr->blocklist);
		/* free the finished erp request */
		FUNC1(cqr, cqr->memdev);
		cqr = refers;
	}

	/* set corresponding status to original cqr */
	cqr->startclk = startclk;
	cqr->stopclk = stopclk;
	cqr->startdev = startdev;
	if (success)
		cqr->status = DASD_CQR_DONE;
	else {
		cqr->status = DASD_CQR_FAILED;
		cqr->stopclk = FUNC2();
	}

	return cqr;

}