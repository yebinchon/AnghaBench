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
struct dasd_rssd_lcq {int /*<<< orphan*/  suborder; int /*<<< orphan*/  order; } ;
struct dasd_psf_prssd_data {int /*<<< orphan*/  suborder; int /*<<< orphan*/  order; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct dasd_eckd_private {TYPE_1__ uid; } ;
struct dasd_device {int default_expires; int /*<<< orphan*/  cdev; struct dasd_eckd_private* private; } ;
struct dasd_ccw_req {int retries; int expires; struct dasd_device* memdev; int /*<<< orphan*/  flags; int /*<<< orphan*/ * block; struct dasd_device* startdev; int /*<<< orphan*/  status; int /*<<< orphan*/  buildclk; struct ccw1* cpaddr; struct dasd_rssd_lcq* data; } ;
struct ccw1 {int count; void* cda; int /*<<< orphan*/  flags; int /*<<< orphan*/  cmd_code; } ;
typedef  scalar_t__ addr_t ;
typedef  void* __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  CCW_FLAG_CC ; 
 int /*<<< orphan*/  CCW_FLAG_SLI ; 
 int /*<<< orphan*/  DASD_CQR_FILLED ; 
 int /*<<< orphan*/  DASD_CQR_SUPPRESS_CR ; 
 int /*<<< orphan*/  DASD_ECKD_CCW_PSF ; 
 int /*<<< orphan*/  DASD_ECKD_CCW_RSSD ; 
 int /*<<< orphan*/  DASD_ECKD_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  DBF_WARNING ; 
 int HZ ; 
 scalar_t__ FUNC1 (struct dasd_ccw_req*) ; 
 int /*<<< orphan*/  PSF_ORDER_PRSSD ; 
 int /*<<< orphan*/  PSF_SUBORDER_LCQ ; 
 int FUNC2 (struct dasd_ccw_req*) ; 
 scalar_t__ UA_BASE_PAV_ALIAS ; 
 scalar_t__ UA_HYPER_PAV_ALIAS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dasd_device*,struct dasd_rssd_lcq*) ; 
 int /*<<< orphan*/  FUNC5 (struct dasd_ccw_req*,struct dasd_device*) ; 
 int FUNC6 (struct dasd_ccw_req*) ; 
 struct dasd_ccw_req* FUNC7 (int /*<<< orphan*/ ,int,int,struct dasd_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct dasd_rssd_lcq*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct dasd_device *device)
{
	struct dasd_eckd_private *private = device->private;
	struct dasd_psf_prssd_data *prssdp;
	struct dasd_rssd_lcq *lcq;
	struct dasd_ccw_req *cqr;
	struct ccw1 *ccw;
	int rc;

	/* This command cannot be executed on an alias device */
	if (private->uid.type == UA_BASE_PAV_ALIAS ||
	    private->uid.type == UA_HYPER_PAV_ALIAS)
		return 0;

	cqr = FUNC7(DASD_ECKD_MAGIC, 2 /* PSF + RSSD */,
				   sizeof(*prssdp) + sizeof(*lcq), device, NULL);
	if (FUNC1(cqr)) {
		FUNC0(DBF_WARNING, device->cdev, "%s",
				"Could not allocate initialization request");
		return FUNC2(cqr);
	}

	/* Prepare for Read Subsystem Data */
	prssdp = cqr->data;
	FUNC9(prssdp, 0, sizeof(*prssdp));
	prssdp->order = PSF_ORDER_PRSSD;
	prssdp->suborder = PSF_SUBORDER_LCQ;	/* Logical Configuration Query */

	ccw = cqr->cpaddr;
	ccw->cmd_code = DASD_ECKD_CCW_PSF;
	ccw->count = sizeof(*prssdp);
	ccw->flags |= CCW_FLAG_CC;
	ccw->cda = (__u32)(addr_t)prssdp;

	lcq = (struct dasd_rssd_lcq *)(prssdp + 1);
	FUNC9(lcq, 0, sizeof(*lcq));

	ccw++;
	ccw->cmd_code = DASD_ECKD_CCW_RSSD;
	ccw->count = sizeof(*lcq);
	ccw->flags |= CCW_FLAG_SLI;
	ccw->cda = (__u32)(addr_t)lcq;

	cqr->buildclk = FUNC8();
	cqr->status = DASD_CQR_FILLED;
	cqr->startdev = device;
	cqr->memdev = device;
	cqr->block = NULL;
	cqr->retries = 256;
	cqr->expires = device->default_expires * HZ;
	/* The command might not be supported. Suppress the error output */
	FUNC3(DASD_CQR_SUPPRESS_CR, &cqr->flags);

	rc = FUNC6(cqr);
	if (rc == 0) {
		FUNC4(device, lcq);
	} else {
		FUNC0(DBF_WARNING, device->cdev,
				"Reading the logical configuration failed with rc=%d", rc);
	}

	FUNC5(cqr, cqr->memdev);

	return rc;
}