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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dasd_device*,char*,char*) ; 
 int /*<<< orphan*/  DBF_WARNING ; 
 char SNS1_PERM_ERR ; 
 char SNS1_WRITE_INHIBITED ; 
 char SNS2_ENV_DATA_PRESENT ; 
 struct dasd_ccw_req* FUNC1 (struct dasd_ccw_req*) ; 
 struct dasd_ccw_req* FUNC2 (struct dasd_ccw_req*,char*) ; 
 struct dasd_ccw_req* FUNC3 (struct dasd_ccw_req*) ; 
 int /*<<< orphan*/  FUNC4 (struct dasd_ccw_req*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static struct dasd_ccw_req *
FUNC7(struct dasd_ccw_req * erp, char *sense)
{

	struct dasd_device *device = erp->startdev;

	erp->function = dasd_3990_erp_equip_check;

	if (sense[1] & SNS1_WRITE_INHIBITED) {
		FUNC6(&device->cdev->dev,
			    "Write inhibited path encountered\n");

		/* vary path offline
		   internal error 04 - Path should be varied off-line.*/
		FUNC5(&device->cdev->dev, "An error occurred in the DASD "
			"device driver, reason=%s\n", "04");

		erp = FUNC1(erp);

	} else if (sense[2] & SNS2_ENV_DATA_PRESENT) {

		FUNC0(DBF_WARNING, device, "%s",
			    "Equipment Check - " "environmental data present");

		FUNC4(erp, sense);

		erp = FUNC2(erp, sense);

	} else if (sense[1] & SNS1_PERM_ERR) {

		FUNC0(DBF_WARNING, device, "%s",
			    "Equipment Check - retry exhausted or "
			    "undesirable");

		erp = FUNC1(erp);

	} else {
		/* all other equipment checks - Action 5 */
		/* rest is done when retries == 0 */
		FUNC0(DBF_WARNING, device, "%s",
			    "Equipment check or processing error");

		erp = FUNC3(erp);
	}
	return erp;

}