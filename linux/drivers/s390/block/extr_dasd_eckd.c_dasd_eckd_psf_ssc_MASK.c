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
struct dasd_ccw_req {unsigned long flags; int intrc; int /*<<< orphan*/  memdev; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct dasd_ccw_req*) ; 
 int FUNC1 (struct dasd_ccw_req*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct dasd_ccw_req* FUNC3 (struct dasd_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dasd_ccw_req*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct dasd_ccw_req*) ; 

__attribute__((used)) static int
FUNC6(struct dasd_device *device, int enable_pav,
		  unsigned long flags)
{
	struct dasd_ccw_req *cqr;
	int rc;

	cqr = FUNC3(device, enable_pav);
	if (FUNC0(cqr))
		return FUNC1(cqr);

	/*
	 * set flags e.g. turn on failfast, to prevent blocking
	 * the calling function should handle failed requests
	 */
	cqr->flags |= flags;

	rc = FUNC5(cqr);
	if (!rc)
		/* trigger CIO to reprobe devices */
		FUNC2();
	else if (cqr->intrc == -EAGAIN)
		rc = -EAGAIN;

	FUNC4(cqr, cqr->memdev);
	return rc;
}