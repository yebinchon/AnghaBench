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
struct dasd_device {TYPE_1__* block; } ;
struct dasd_ccw_req {int /*<<< orphan*/  stopclk; int /*<<< orphan*/  status; struct dasd_device* startdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  bp_block; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_CQR_CLEAR_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dasd_device*) ; 

__attribute__((used)) static int
FUNC4(struct dasd_ccw_req * cqr)
{
	struct dasd_device *device;

	device = cqr->startdev;
	FUNC3(device);
	FUNC2(device, device->block->bp_block, 0, NULL);
	cqr->status = DASD_CQR_CLEAR_PENDING;
	cqr->stopclk = FUNC1();
	FUNC0(device);
	return 0;
}