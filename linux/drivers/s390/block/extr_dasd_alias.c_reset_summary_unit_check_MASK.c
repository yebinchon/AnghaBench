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
struct dasd_ccw_req {int retries; int expires; int /*<<< orphan*/  status; int /*<<< orphan*/  buildclk; int /*<<< orphan*/ * block; struct dasd_device* memdev; struct dasd_device* startdev; int /*<<< orphan*/  flags; scalar_t__ data; struct ccw1* cpaddr; int /*<<< orphan*/  magic; } ;
struct ccw1 {int count; scalar_t__ cda; int /*<<< orphan*/  flags; int /*<<< orphan*/  cmd_code; } ;
struct alias_lcu {struct dasd_ccw_req* rsu_cqr; } ;
typedef  scalar_t__ addr_t ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  CCW_FLAG_SLI ; 
 int /*<<< orphan*/  DASD_CQR_FILLED ; 
 int /*<<< orphan*/  DASD_CQR_FLAGS_USE_ERP ; 
 int /*<<< orphan*/  DASD_ECKD_CCW_RSCK ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct dasd_ccw_req*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static int FUNC5(struct alias_lcu *lcu,
				    struct dasd_device *device,
				    char reason)
{
	struct dasd_ccw_req *cqr;
	int rc = 0;
	struct ccw1 *ccw;

	cqr = lcu->rsu_cqr;
	FUNC4((char *) &cqr->magic, "ECKD", 4);
	FUNC0((char *) &cqr->magic, 4);
	ccw = cqr->cpaddr;
	ccw->cmd_code = DASD_ECKD_CCW_RSCK;
	ccw->flags = CCW_FLAG_SLI;
	ccw->count = 16;
	ccw->cda = (__u32)(addr_t) cqr->data;
	((char *)cqr->data)[0] = reason;

	FUNC1(DASD_CQR_FLAGS_USE_ERP, &cqr->flags);
	cqr->retries = 255;	/* set retry counter to enable basic ERP */
	cqr->startdev = device;
	cqr->memdev = device;
	cqr->block = NULL;
	cqr->expires = 5 * HZ;
	cqr->buildclk = FUNC3();
	cqr->status = DASD_CQR_FILLED;

	rc = FUNC2(cqr);
	return rc;
}