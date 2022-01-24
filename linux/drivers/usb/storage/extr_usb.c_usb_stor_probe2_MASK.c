#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct us_data {scalar_t__ transport; int fflags; int max_lun; TYPE_1__* pusb_intf; int /*<<< orphan*/  scan_dwork; int /*<<< orphan*/  dflags; int /*<<< orphan*/  scsi_name; int /*<<< orphan*/  protocol_name; int /*<<< orphan*/  transport_name; int /*<<< orphan*/  proto_handler; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int this_id; int max_id; int no_scsi2_lun_in_cdb; } ;
struct TYPE_5__ {struct device dev; } ;

/* Variables and functions */
 int ENXIO ; 
 int HZ ; 
 int /*<<< orphan*/  US_FLIDX_REDO_READ10 ; 
 int /*<<< orphan*/  US_FLIDX_SCAN_PENDING ; 
 int US_FL_INITIAL_READ10 ; 
 int US_FL_SCM_MULT_TARG ; 
 int US_FL_SINGLE_LUN ; 
 int delay_use ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 char* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int FUNC3 (struct us_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct us_data*) ; 
 int FUNC6 (TYPE_3__*,struct device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  system_freezable_wq ; 
 TYPE_3__* FUNC9 (struct us_data*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 scalar_t__ usb_stor_Bulk_transport ; 
 int FUNC12 (struct us_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct us_data*,char*,...) ; 

int FUNC14(struct us_data *us)
{
	int result;
	struct device *dev = &us->pusb_intf->dev;

	/* Make sure the transport and protocol have both been set */
	if (!us->transport || !us->proto_handler) {
		result = -ENXIO;
		goto BadDevice;
	}
	FUNC13(us, "Transport: %s\n", us->transport_name);
	FUNC13(us, "Protocol: %s\n", us->protocol_name);

	if (us->fflags & US_FL_SCM_MULT_TARG) {
		/*
		 * SCM eUSCSI bridge devices can have different numbers
		 * of LUNs on different targets; allow all to be probed.
		 */
		us->max_lun = 7;
		/* The eUSCSI itself has ID 7, so avoid scanning that */
		FUNC9(us)->this_id = 7;
		/* max_id is 8 initially, so no need to set it here */
	} else {
		/* In the normal case there is only a single target */
		FUNC9(us)->max_id = 1;
		/*
		 * Like Windows, we won't store the LUN bits in CDB[1] for
		 * SCSI-2 devices using the Bulk-Only transport (even though
		 * this violates the SCSI spec).
		 */
		if (us->transport == usb_stor_Bulk_transport)
			FUNC9(us)->no_scsi2_lun_in_cdb = 1;
	}

	/* fix for single-lun devices */
	if (us->fflags & US_FL_SINGLE_LUN)
		us->max_lun = 0;

	/* Find the endpoints and calculate pipe values */
	result = FUNC3(us);
	if (result)
		goto BadDevice;

	/*
	 * If the device returns invalid data for the first READ(10)
	 * command, indicate the command should be retried.
	 */
	if (us->fflags & US_FL_INITIAL_READ10)
		FUNC7(US_FLIDX_REDO_READ10, &us->dflags);

	/* Acquire all the other resources and add the host */
	result = FUNC12(us);
	if (result)
		goto BadDevice;
	FUNC10(us->pusb_intf);
	FUNC8(us->scsi_name, sizeof(us->scsi_name), "usb-storage %s",
					FUNC1(&us->pusb_intf->dev));
	result = FUNC6(FUNC9(us), dev);
	if (result) {
		FUNC2(dev,
				"Unable to add the scsi host\n");
		goto HostAddErr;
	}

	/* Submit the delayed_work for SCSI-device scanning */
	FUNC7(US_FLIDX_SCAN_PENDING, &us->dflags);

	if (delay_use > 0)
		FUNC0(dev, "waiting for device to settle before scanning\n");
	FUNC4(system_freezable_wq, &us->scan_dwork,
			delay_use * HZ);
	return 0;

	/* We come here if there are any problems */
HostAddErr:
	FUNC11(us->pusb_intf);
BadDevice:
	FUNC13(us, "storage_probe() failed\n");
	FUNC5(us);
	return result;
}