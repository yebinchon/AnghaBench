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
struct dasd_device {scalar_t__ block; } ;
struct ccw_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_device*) ; 
 struct dasd_device* FUNC2 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct dasd_device*) ; 
 int /*<<< orphan*/  shutdown_waitq ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct ccw_device *cdev)
{
	struct dasd_device *device;

	device = FUNC2(cdev);
	if (FUNC0(device))
		return;

	if (device->block)
		FUNC3(device->block);

	FUNC4(device);

	FUNC5(shutdown_waitq, FUNC1(device));
}