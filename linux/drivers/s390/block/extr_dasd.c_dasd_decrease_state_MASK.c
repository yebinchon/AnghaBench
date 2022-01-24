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
struct dasd_device {scalar_t__ state; scalar_t__ target; } ;

/* Variables and functions */
 scalar_t__ DASD_STATE_BASIC ; 
 scalar_t__ DASD_STATE_KNOWN ; 
 scalar_t__ DASD_STATE_NEW ; 
 scalar_t__ DASD_STATE_ONLINE ; 
 scalar_t__ DASD_STATE_READY ; 
 scalar_t__ DASD_STATE_UNFMT ; 
 int FUNC0 (struct dasd_device*) ; 
 int FUNC1 (struct dasd_device*) ; 
 int FUNC2 (struct dasd_device*) ; 
 int FUNC3 (struct dasd_device*) ; 
 int FUNC4 (struct dasd_device*) ; 

__attribute__((used)) static int FUNC5(struct dasd_device *device)
{
	int rc;

	rc = 0;
	if (device->state == DASD_STATE_ONLINE &&
	    device->target <= DASD_STATE_READY)
		rc = FUNC2(device);

	if (!rc &&
	    device->state == DASD_STATE_READY &&
	    device->target <= DASD_STATE_BASIC)
		rc = FUNC3(device);

	if (!rc &&
	    device->state == DASD_STATE_UNFMT &&
	    device->target <= DASD_STATE_BASIC)
		rc = FUNC4(device);

	if (!rc &&
	    device->state == DASD_STATE_BASIC &&
	    device->target <= DASD_STATE_KNOWN)
		rc = FUNC0(device);

	if (!rc &&
	    device->state == DASD_STATE_KNOWN &&
	    device->target <= DASD_STATE_NEW)
		rc = FUNC1(device);

	return rc;
}