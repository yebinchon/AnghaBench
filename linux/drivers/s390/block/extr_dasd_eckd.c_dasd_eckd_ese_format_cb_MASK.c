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
struct dasd_eckd_private {int /*<<< orphan*/  count; } ;
struct dasd_device {struct dasd_eckd_private* private; } ;
struct dasd_ccw_req {struct dasd_device* startdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dasd_ccw_req*,struct dasd_device*) ; 

__attribute__((used)) static void FUNC1(struct dasd_ccw_req *cqr, void *data)
{
	struct dasd_device *device = cqr->startdev;
	struct dasd_eckd_private *private = device->private;

	private->count--;
	FUNC0(cqr, device);
}