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
struct dasd_device {int stopped; int /*<<< orphan*/  flags; } ;
struct dasd_ccw_req {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_CQR_VERIFY_PATH ; 
 int /*<<< orphan*/  DASD_FLAG_OFFLINE ; 
 int /*<<< orphan*/  DASD_FLAG_SAFE_OFFLINE_RUNNING ; 
 int DASD_STOPPED_DC_WAIT ; 
 int DASD_STOPPED_NOSPC ; 
 int DASD_UNRESUMED_PM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct dasd_device *device,
				     struct dasd_ccw_req *cqr)
{
	int mask = ~(DASD_STOPPED_DC_WAIT | DASD_UNRESUMED_PM | DASD_STOPPED_NOSPC);

	if (FUNC0(DASD_FLAG_OFFLINE, &device->flags) &&
	    !FUNC0(DASD_FLAG_SAFE_OFFLINE_RUNNING, &device->flags)) {
		/*
		 * dasd is being set offline
		 * but it is no safe offline where we have to allow I/O
		 */
		return 1;
	}
	if (device->stopped) {
		if (device->stopped & mask) {
			/* stopped and CQR will not change that. */
			return 1;
		}
		if (!FUNC0(DASD_CQR_VERIFY_PATH, &cqr->flags)) {
			/* CQR is not able to change device to
			 * operational. */
			return 1;
		}
		/* CQR required to get device operational. */
	}
	return 0;
}