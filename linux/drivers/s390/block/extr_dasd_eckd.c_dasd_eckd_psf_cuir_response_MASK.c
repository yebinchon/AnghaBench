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
struct dasd_psf_cuir_response {int cc; int /*<<< orphan*/  ssid; int /*<<< orphan*/  cssid; void* message_id; int /*<<< orphan*/  chpid; int /*<<< orphan*/  order; } ;
struct dasd_device {TYPE_1__* path; } ;
struct dasd_ccw_req {int retries; int expires; struct dasd_device* memdev; int /*<<< orphan*/  flags; int /*<<< orphan*/  status; int /*<<< orphan*/  buildclk; int /*<<< orphan*/ * block; struct dasd_device* startdev; struct ccw1* cpaddr; scalar_t__ data; } ;
struct ccw1 {int count; int /*<<< orphan*/  flags; void* cda; int /*<<< orphan*/  cmd_code; } ;
typedef  scalar_t__ addr_t ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  void* __u32 ;
struct TYPE_2__ {int /*<<< orphan*/  ssid; int /*<<< orphan*/  cssid; int /*<<< orphan*/  chpid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCW_FLAG_SLI ; 
 int /*<<< orphan*/  DASD_CQR_FILLED ; 
 int /*<<< orphan*/  DASD_CQR_VERIFY_PATH ; 
 int /*<<< orphan*/  DASD_ECKD_CCW_PSF ; 
 int /*<<< orphan*/  DASD_ECKD_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dasd_device*,char*,char*) ; 
 int /*<<< orphan*/  DBF_WARNING ; 
 int HZ ; 
 scalar_t__ FUNC1 (struct dasd_ccw_req*) ; 
 int /*<<< orphan*/  PSF_ORDER_CUIR_RESPONSE ; 
 int FUNC2 (struct dasd_ccw_req*) ; 
 int /*<<< orphan*/  FUNC3 (struct dasd_ccw_req*,struct dasd_device*) ; 
 int FUNC4 (struct dasd_ccw_req*) ; 
 struct dasd_ccw_req* FUNC5 (int /*<<< orphan*/ ,int,int,struct dasd_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(struct dasd_device *device, int response,
			    __u32 message_id, __u8 lpum)
{
	struct dasd_psf_cuir_response *psf_cuir;
	int pos = FUNC7(lpum);
	struct dasd_ccw_req *cqr;
	struct ccw1 *ccw;
	int rc;

	cqr = FUNC5(DASD_ECKD_MAGIC, 1 /* PSF */ ,
				   sizeof(struct dasd_psf_cuir_response),
				   device, NULL);

	if (FUNC1(cqr)) {
		FUNC0(DBF_WARNING, device, "%s",
			   "Could not allocate PSF-CUIR request");
		return FUNC2(cqr);
	}

	psf_cuir = (struct dasd_psf_cuir_response *)cqr->data;
	psf_cuir->order = PSF_ORDER_CUIR_RESPONSE;
	psf_cuir->cc = response;
	psf_cuir->chpid = device->path[pos].chpid;
	psf_cuir->message_id = message_id;
	psf_cuir->cssid = device->path[pos].cssid;
	psf_cuir->ssid = device->path[pos].ssid;
	ccw = cqr->cpaddr;
	ccw->cmd_code = DASD_ECKD_CCW_PSF;
	ccw->cda = (__u32)(addr_t)psf_cuir;
	ccw->flags = CCW_FLAG_SLI;
	ccw->count = sizeof(struct dasd_psf_cuir_response);

	cqr->startdev = device;
	cqr->memdev = device;
	cqr->block = NULL;
	cqr->retries = 256;
	cqr->expires = 10*HZ;
	cqr->buildclk = FUNC6();
	cqr->status = DASD_CQR_FILLED;
	FUNC8(DASD_CQR_VERIFY_PATH, &cqr->flags);

	rc = FUNC4(cqr);

	FUNC3(cqr, cqr->memdev);
	return rc;
}