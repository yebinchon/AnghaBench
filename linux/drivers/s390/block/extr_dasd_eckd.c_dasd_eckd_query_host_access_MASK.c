#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dasd_psf_query_host_access {int dummy; } ;
struct dasd_psf_prssd_data {int /*<<< orphan*/  volume; int /*<<< orphan*/  lss; int /*<<< orphan*/  suborder; int /*<<< orphan*/  order; } ;
struct TYPE_5__ {int* feature; } ;
struct dasd_eckd_private {TYPE_3__* ned; TYPE_2__ features; TYPE_1__* lcu; } ;
struct dasd_device {int /*<<< orphan*/  cdev; int /*<<< orphan*/  block; struct dasd_eckd_private* private; } ;
struct dasd_ccw_req {int retries; int expires; struct dasd_device* memdev; int /*<<< orphan*/  flags; int /*<<< orphan*/  status; int /*<<< orphan*/  buildclk; struct ccw1* cpaddr; scalar_t__ data; int /*<<< orphan*/ * block; struct dasd_device* startdev; } ;
struct ccw1 {int count; void* cda; int /*<<< orphan*/  flags; int /*<<< orphan*/  cmd_code; } ;
typedef  scalar_t__ addr_t ;
typedef  void* __u32 ;
struct TYPE_6__ {int /*<<< orphan*/  unit_addr; int /*<<< orphan*/  ID; } ;
struct TYPE_4__ {scalar_t__ pav; } ;

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
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 scalar_t__ HYPER_PAV ; 
 int HZ ; 
 scalar_t__ FUNC1 (struct dasd_ccw_req*) ; 
 int /*<<< orphan*/  PSF_ORDER_PRSSD ; 
 int /*<<< orphan*/  PSF_SUBORDER_QHA ; 
 int FUNC2 (struct dasd_ccw_req*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dasd_ccw_req*,struct dasd_device*) ; 
 int FUNC5 (struct dasd_ccw_req*) ; 
 struct dasd_ccw_req* FUNC6 (int /*<<< orphan*/ ,int,int,struct dasd_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct dasd_psf_query_host_access*) ; 
 struct dasd_psf_query_host_access* FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct dasd_psf_prssd_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct dasd_device *device,
				       struct dasd_psf_query_host_access *data)
{
	struct dasd_eckd_private *private = device->private;
	struct dasd_psf_query_host_access *host_access;
	struct dasd_psf_prssd_data *prssdp;
	struct dasd_ccw_req *cqr;
	struct ccw1 *ccw;
	int rc;

	/* not available for HYPER PAV alias devices */
	if (!device->block && private->lcu->pav == HYPER_PAV)
		return -EOPNOTSUPP;

	/* may not be supported by the storage server */
	if (!(private->features.feature[14] & 0x80))
		return -EOPNOTSUPP;

	cqr = FUNC6(DASD_ECKD_MAGIC, 1 /* PSF */	+ 1 /* RSSD */,
				   sizeof(struct dasd_psf_prssd_data) + 1,
				   device, NULL);
	if (FUNC1(cqr)) {
		FUNC0(DBF_WARNING, device->cdev, "%s",
				"Could not allocate read message buffer request");
		return FUNC2(cqr);
	}
	host_access = FUNC9(sizeof(*host_access), GFP_KERNEL | GFP_DMA);
	if (!host_access) {
		FUNC4(cqr, device);
		FUNC0(DBF_WARNING, device->cdev, "%s",
				"Could not allocate host_access buffer");
		return -ENOMEM;
	}
	cqr->startdev = device;
	cqr->memdev = device;
	cqr->block = NULL;
	cqr->retries = 256;
	cqr->expires = 10 * HZ;

	/* Prepare for Read Subsystem Data */
	prssdp = (struct dasd_psf_prssd_data *) cqr->data;
	FUNC10(prssdp, 0, sizeof(struct dasd_psf_prssd_data));
	prssdp->order = PSF_ORDER_PRSSD;
	prssdp->suborder = PSF_SUBORDER_QHA;	/* query host access */
	/* LSS and Volume that will be queried */
	prssdp->lss = private->ned->ID;
	prssdp->volume = private->ned->unit_addr;
	/* all other bytes of prssdp must be zero */

	ccw = cqr->cpaddr;
	ccw->cmd_code = DASD_ECKD_CCW_PSF;
	ccw->count = sizeof(struct dasd_psf_prssd_data);
	ccw->flags |= CCW_FLAG_CC;
	ccw->flags |= CCW_FLAG_SLI;
	ccw->cda = (__u32)(addr_t) prssdp;

	/* Read Subsystem Data - query host access */
	ccw++;
	ccw->cmd_code = DASD_ECKD_CCW_RSSD;
	ccw->count = sizeof(struct dasd_psf_query_host_access);
	ccw->flags |= CCW_FLAG_SLI;
	ccw->cda = (__u32)(addr_t) host_access;

	cqr->buildclk = FUNC7();
	cqr->status = DASD_CQR_FILLED;
	/* the command might not be supported, suppress error message */
	FUNC3(DASD_CQR_SUPPRESS_CR, &cqr->flags);
	rc = FUNC5(cqr);
	if (rc == 0) {
		*data = *host_access;
	} else {
		FUNC0(DBF_WARNING, device->cdev,
				"Reading host access data failed with rc=%d\n",
				rc);
		rc = -EOPNOTSUPP;
	}

	FUNC4(cqr, cqr->memdev);
	FUNC8(host_access);
	return rc;
}