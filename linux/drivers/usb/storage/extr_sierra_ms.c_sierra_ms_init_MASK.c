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
struct usb_device {int /*<<< orphan*/  dev; } ;
struct us_data {TYPE_1__* pusb_intf; struct usb_device* pusb_dev; } ;
struct swoc_info {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  SWIMS_SET_MODE_Modem ; 
 scalar_t__ TRU_FORCE_MODEM ; 
 scalar_t__ TRU_FORCE_MS ; 
 int /*<<< orphan*/  FUNC0 (struct swoc_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct swoc_info*) ; 
 int /*<<< orphan*/  dev_attr_truinst ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct swoc_info*) ; 
 struct swoc_info* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct Scsi_Host*) ; 
 int FUNC7 (struct usb_device*,struct swoc_info*) ; 
 int FUNC8 (struct usb_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ swi_tru_install ; 
 struct Scsi_Host* FUNC9 (struct us_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct us_data*,char*) ; 

int FUNC11(struct us_data *us)
{
	int result, retries;
	struct swoc_info *swocInfo;
	struct usb_device *udev;
	struct Scsi_Host *sh;

	retries = 3;
	result = 0;
	udev = us->pusb_dev;

	sh = FUNC9(us);
	FUNC6(sh);

	/* Force Modem mode */
	if (swi_tru_install == TRU_FORCE_MODEM) {
		FUNC10(us, "SWIMS: Forcing Modem Mode\n");
		result = FUNC8(udev, SWIMS_SET_MODE_Modem);
		if (result < 0)
			FUNC10(us, "SWIMS: Failed to switch to modem mode\n");
		return -EIO;
	}
	/* Force Mass Storage mode (keep CD-Rom) */
	else if (swi_tru_install == TRU_FORCE_MS) {
		FUNC10(us, "SWIMS: Forcing Mass Storage Mode\n");
		goto complete;
	}
	/* Normal TRU-Install Logic */
	else {
		FUNC10(us, "SWIMS: Normal SWoC Logic\n");

		swocInfo = FUNC4(sizeof(struct swoc_info),
				GFP_KERNEL);
		if (!swocInfo)
			return -ENOMEM;

		retries = 3;
		do {
			retries--;
			result = FUNC7(udev, swocInfo);
			if (result < 0) {
				FUNC10(us, "SWIMS: Failed SWoC query\n");
				FUNC5(2*HZ);
			}
		} while (retries && result < 0);

		if (result < 0) {
			FUNC10(us, "SWIMS: Completely failed SWoC query\n");
			FUNC3(swocInfo);
			return -EIO;
		}

		FUNC1(&us->pusb_dev->dev, swocInfo);

		/*
		 * If there is not Linux software on the TRU-Install device
		 * then switch to modem mode
		 */
		if (!FUNC0(swocInfo)) {
			FUNC10(us, "SWIMS: Switching to Modem Mode\n");
			result = FUNC8(udev,
				SWIMS_SET_MODE_Modem);
			if (result < 0)
				FUNC10(us, "SWIMS: Failed to switch modem\n");
			FUNC3(swocInfo);
			return -EIO;
		}
		FUNC3(swocInfo);
	}
complete:
	return FUNC2(&us->pusb_intf->dev, &dev_attr_truinst);
}