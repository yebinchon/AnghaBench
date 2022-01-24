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
struct dasd_device {scalar_t__ state; int /*<<< orphan*/  kick_validate; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_FLAG_OFFLINE ; 
 scalar_t__ DASD_STATE_ONLINE ; 
 int /*<<< orphan*/  FUNC0 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct dasd_device *device)
{
	FUNC0(device);
	/* exit if device not online or in offline processing */
	if (FUNC3(DASD_FLAG_OFFLINE, &device->flags) ||
	   device->state < DASD_STATE_ONLINE) {
		FUNC1(device);
		return;
	}
	/* queue call to do_validate_server to the kernel event daemon. */
	if (!FUNC2(&device->kick_validate))
		FUNC1(device);
}