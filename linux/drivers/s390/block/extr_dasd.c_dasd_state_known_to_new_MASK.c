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
struct dasd_device {scalar_t__ block; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_STATE_NEW ; 
 int /*<<< orphan*/  FUNC0 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_device*) ; 

__attribute__((used)) static int FUNC3(struct dasd_device *device)
{
	/* Disable extended error reporting for this device. */
	FUNC0(device);
	device->state = DASD_STATE_NEW;

	if (device->block)
		FUNC1(device->block);

	/* Give up reference we took in dasd_state_new_to_known. */
	FUNC2(device);
	return 0;
}