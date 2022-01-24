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
struct dasd_ccw_req {struct dasd_ccw_req* (* function ) (struct dasd_ccw_req*,char*) ;struct dasd_device* startdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_CQR_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dasd_device*,char*,char*) ; 
 int /*<<< orphan*/  DBF_WARNING ; 
 char SNS2_ENV_DATA_PRESENT ; 
 struct dasd_ccw_req* FUNC1 (struct dasd_ccw_req*,char*) ; 
 struct dasd_ccw_req* FUNC2 (struct dasd_ccw_req*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dasd_ccw_req*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static struct dasd_ccw_req *
FUNC5(struct dasd_ccw_req * erp, char *sense)
{

	struct dasd_device *device = erp->startdev;

	erp->function = dasd_3990_erp_inv_format;

	if (sense[2] & SNS2_ENV_DATA_PRESENT) {

		FUNC0(DBF_WARNING, device, "%s",
			    "Track format error when destaging or "
			    "staging data");

		FUNC3(erp, sense);

		erp = FUNC1(erp, sense);

	} else {
		/* internal error 06 - The track format is not valid*/
		FUNC4(&device->cdev->dev,
			"An error occurred in the DASD device driver, "
			"reason=%s\n", "06");

		erp = FUNC2(erp, DASD_CQR_FAILED);
	}

	return erp;

}