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
struct timer_list {int dummy; } ;
struct dasd_device {int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_STOPPED_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct dasd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_device*) ; 
 struct dasd_device* FUNC2 (struct dasd_device*,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC6(struct timer_list *t)
{
	unsigned long flags;
	struct dasd_device *device;

	device = FUNC2(device, t, timer);
	FUNC4(FUNC3(device->cdev), flags);
	/* re-activate request queue */
	FUNC0(device, DASD_STOPPED_PENDING);
	FUNC5(FUNC3(device->cdev), flags);
	FUNC1(device);
}