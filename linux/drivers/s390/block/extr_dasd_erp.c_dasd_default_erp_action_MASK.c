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
struct dasd_device {TYPE_1__* cdev; } ;
struct dasd_ccw_req {int /*<<< orphan*/  stopclk; int /*<<< orphan*/  status; int /*<<< orphan*/  lpm; int /*<<< orphan*/  flags; int /*<<< orphan*/  retries; struct dasd_device* startdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_CQR_FAILED ; 
 int /*<<< orphan*/  DASD_CQR_FILLED ; 
 int /*<<< orphan*/  DASD_CQR_VERIFY_PATH ; 
 int /*<<< orphan*/  DBF_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dasd_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct dasd_ccw_req *
FUNC6(struct dasd_ccw_req *cqr)
{
	struct dasd_device *device;

	device = cqr->startdev;

        /* just retry - there is nothing to save ... I got no sense data.... */
        if (cqr->retries > 0) {
		FUNC0(DBF_DEBUG, device,
                             "default ERP called (%i retries left)",
                             cqr->retries);
		if (!FUNC5(DASD_CQR_VERIFY_PATH, &cqr->flags))
			cqr->lpm = FUNC1(device);
		cqr->status = DASD_CQR_FILLED;
        } else {
		FUNC4("%s: default ERP has run out of retries and failed\n",
		       FUNC2(&device->cdev->dev));
		cqr->status = DASD_CQR_FAILED;
		cqr->stopclk = FUNC3();
        }
        return cqr;
}