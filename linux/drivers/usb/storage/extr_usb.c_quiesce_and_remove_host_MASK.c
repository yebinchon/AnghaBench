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
struct us_data {int /*<<< orphan*/  delay_wait; int /*<<< orphan*/  dflags; int /*<<< orphan*/  pusb_intf; int /*<<< orphan*/  scan_dwork; TYPE_1__* pusb_dev; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ USB_STATE_NOTATTACHED ; 
 int /*<<< orphan*/  US_FLIDX_DISCONNECTING ; 
 int /*<<< orphan*/  US_FLIDX_SCAN_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct Scsi_Host* FUNC6 (struct us_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct us_data *us)
{
	struct Scsi_Host *host = FUNC6(us);

	/* If the device is really gone, cut short reset delays */
	if (us->pusb_dev->state == USB_STATE_NOTATTACHED) {
		FUNC4(US_FLIDX_DISCONNECTING, &us->dflags);
		FUNC8(&us->delay_wait);
	}

	/*
	 * Prevent SCSI scanning (if it hasn't started yet)
	 * or wait for the SCSI-scanning routine to stop.
	 */
	FUNC0(&us->scan_dwork);

	/* Balance autopm calls if scanning was cancelled */
	if (FUNC5(US_FLIDX_SCAN_PENDING, &us->dflags))
		FUNC7(us->pusb_intf);

	/*
	 * Removing the host will perform an orderly shutdown: caches
	 * synchronized, disks spun down, etc.
	 */
	FUNC2(host);

	/*
	 * Prevent any new commands from being accepted and cut short
	 * reset delays.
	 */
	FUNC1(host);
	FUNC4(US_FLIDX_DISCONNECTING, &us->dflags);
	FUNC3(host);
	FUNC8(&us->delay_wait);
}