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
struct dasd_ccw_req {TYPE_1__* refers; } ;
struct TYPE_2__ {int /*<<< orphan*/  irb; } ;

/* Variables and functions */
 char DASD_SENSE_BIT_0 ; 
 struct dasd_ccw_req* FUNC0 (struct dasd_ccw_req*) ; 
 struct dasd_ccw_req* FUNC1 (struct dasd_ccw_req*,char*) ; 
 struct dasd_ccw_req* FUNC2 (struct dasd_ccw_req*,char*) ; 
 struct dasd_ccw_req* FUNC3 (struct dasd_ccw_req*) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dasd_ccw_req *
FUNC5(struct dasd_ccw_req *erp)
{

	struct dasd_ccw_req *erp_new = NULL;
	char *sense;

	/* if this problem occurred on an alias retry on base */
	erp_new = FUNC3(erp);
	if (erp_new)
		return erp_new;

	/* sense data are located in the refers record of the
	 * already set up new ERP !
	 * check if concurrent sens is available
	 */
	sense = FUNC4(&erp->refers->irb);
	if (!sense)
		erp_new = FUNC0(erp);
	/* distinguish between 24 and 32 byte sense data */
	else if (sense[27] & DASD_SENSE_BIT_0) {

		/* inspect the 24 byte sense data */
		erp_new = FUNC1(erp, sense);

	} else {

		/* inspect the 32 byte sense data */
		erp_new = FUNC2(erp, sense);

	}	/* end distinguish between 24 and 32 byte sense data */

	return erp_new;
}