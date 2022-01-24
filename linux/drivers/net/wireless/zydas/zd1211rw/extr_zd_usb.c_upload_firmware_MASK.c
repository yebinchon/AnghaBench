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
typedef  int u16 ;
struct zd_usb {int dummy; } ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct firmware {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  fw_name ;

/* Variables and functions */
 int /*<<< orphan*/  E2P_DATA_OFFSET ; 
 int /*<<< orphan*/  FW_START ; 
 int /*<<< orphan*/  REBOOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct zd_usb*,char*,int,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct zd_usb*,struct firmware const*) ; 
 int /*<<< orphan*/  FUNC8 (struct firmware const*) ; 
 int FUNC9 (struct firmware const**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC11 (struct zd_usb*) ; 

__attribute__((used)) static int FUNC12(struct zd_usb *usb)
{
	int r;
	u16 fw_bcdDevice;
	u16 bcdDevice;
	struct usb_device *udev = FUNC11(usb);
	const struct firmware *ub_fw = NULL;
	const struct firmware *uph_fw = NULL;
	char fw_name[128];

	bcdDevice = FUNC4(udev);

	r = FUNC9(&ub_fw,
		FUNC5(usb, fw_name, sizeof(fw_name), "ub"),
		&udev->dev);
	if (r)
		goto error;

	fw_bcdDevice = FUNC6(ub_fw->data, E2P_DATA_OFFSET);

	if (fw_bcdDevice != bcdDevice) {
		FUNC2(&udev->dev,
			"firmware version %#06x and device bootcode version "
			"%#06x differ\n", fw_bcdDevice, bcdDevice);
		if (bcdDevice <= 0x4313)
			FUNC3(&udev->dev, "device has old bootcode, please "
				"report success or failure\n");

		r = FUNC7(usb, ub_fw);
		if (r)
			goto error;
	} else {
		FUNC0(&udev->dev,
			"firmware device id %#06x is equal to the "
			"actual device id\n", fw_bcdDevice);
	}


	r = FUNC9(&uph_fw,
		FUNC5(usb, fw_name, sizeof(fw_name), "uphr"),
		&udev->dev);
	if (r)
		goto error;

	r = FUNC10(udev, uph_fw->data, uph_fw->size, FW_START, REBOOT);
	if (r) {
		FUNC1(&udev->dev,
			"Could not upload firmware code uph. Error number %d\n",
			r);
	}

	/* FALL-THROUGH */
error:
	FUNC8(ub_fw);
	FUNC8(uph_fw);
	return r;
}