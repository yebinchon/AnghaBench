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
struct dasd_device {int /*<<< orphan*/  cdev; } ;
struct dasd_ccw_req {struct dasd_device* startdev; } ;

/* Variables and functions */
 int FUNC0 (struct dasd_ccw_req*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

int FUNC4(struct dasd_ccw_req *cqr)
{
	struct dasd_device *device = cqr->startdev;
	unsigned long flags;
	int rc;

	FUNC2(FUNC1(device->cdev), flags);
	rc = FUNC0(cqr);
	FUNC3(FUNC1(device->cdev), flags);
	return rc;
}