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
struct dasd_ccw_req {int retries; int /*<<< orphan*/  flags; struct dasd_ccw_req* (* function ) (struct dasd_ccw_req*,char*) ;struct dasd_device* startdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_CQR_FAILED ; 
 int /*<<< orphan*/  DASD_CQR_SUPPRESS_CR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dasd_device*,char*,char*) ; 
 int /*<<< orphan*/  DBF_WARNING ; 
 char SNS1_WRITE_INHIBITED ; 
 char SNS2_ENV_DATA_PRESENT ; 
 struct dasd_ccw_req* FUNC1 (struct dasd_ccw_req*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_ccw_req*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dasd_ccw_req *
FUNC5(struct dasd_ccw_req * erp, char *sense)
{

	struct dasd_device *device = erp->startdev;

	erp->function = dasd_3990_erp_com_rej;

	/* env data present (ACTION 10 - retry should work) */
	if (sense[2] & SNS2_ENV_DATA_PRESENT) {

		FUNC0(DBF_WARNING, device, "%s",
			    "Command Reject - environmental data present");

		FUNC2(erp, sense);

		erp->retries = 5;

	} else if (sense[1] & SNS1_WRITE_INHIBITED) {
		FUNC3(&device->cdev->dev, "An I/O request was rejected"
			" because writing is inhibited\n");
		erp = FUNC1(erp, DASD_CQR_FAILED);
	} else {
		/* fatal error -  set status to FAILED
		   internal error 09 - Command Reject */
		if (!FUNC4(DASD_CQR_SUPPRESS_CR, &erp->flags))
			FUNC3(&device->cdev->dev,
				"An error occurred in the DASD device driver, reason=09\n");

		erp = FUNC1(erp, DASD_CQR_FAILED);
	}

	return erp;

}