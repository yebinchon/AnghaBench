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
struct dasd_ccw_req {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dasd_ccw_req*) ; 
 struct dasd_ccw_req* FUNC1 (struct dasd_ccw_req*) ; 
 struct dasd_ccw_req* FUNC2 (struct dasd_ccw_req*) ; 

__attribute__((used)) static struct dasd_ccw_req *
FUNC3(struct dasd_ccw_req * cqr)
{

	struct dasd_ccw_req *erp = NULL;

	/* add erp and initialize with default TIC */
	erp = FUNC1(cqr);

	if (FUNC0(erp))
		return erp;

	/* inspect sense, determine specific ERP if possible */
	if (erp != cqr) {

		erp = FUNC2(erp);
	}

	return erp;

}