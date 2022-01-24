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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct rt2x00_dev {int /*<<< orphan*/  cap_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIRMWARE_IMAGE_BASE ; 
 int /*<<< orphan*/  H2M_MAILBOX_CID ; 
 int /*<<< orphan*/  H2M_MAILBOX_CSR ; 
 int /*<<< orphan*/  H2M_MAILBOX_STATUS ; 
 int /*<<< orphan*/  REGISTER_TIMEOUT_FIRMWARE ; 
 int /*<<< orphan*/  REQUIRE_FIRMWARE ; 
 int /*<<< orphan*/  RT2860 ; 
 int /*<<< orphan*/  RT2872 ; 
 int /*<<< orphan*/  RT3070 ; 
 int /*<<< orphan*/  USB_DEVICE_MODE ; 
 int /*<<< orphan*/  USB_MODE_FIRMWARE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,char*) ; 
 scalar_t__ FUNC5 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct rt2x00_dev *rt2x00dev,
				    const u8 *data, const size_t len)
{
	int status;
	u32 offset;
	u32 length;
	int retval;

	/*
	 * Check which section of the firmware we need.
	 */
	if (FUNC5(rt2x00dev, RT2860) ||
	    FUNC5(rt2x00dev, RT2872) ||
	    FUNC5(rt2x00dev, RT3070)) {
		offset = 0;
		length = 4096;
	} else {
		offset = 4096;
		length = 4096;
	}

	/*
	 * Write firmware to device.
	 */
	retval = FUNC2(rt2x00dev);
	if (retval < 0)
		return retval;
	if (retval) {
		FUNC4(rt2x00dev,
			    "Firmware loading not required - NIC in AutoRun mode\n");
		FUNC0(REQUIRE_FIRMWARE, &rt2x00dev->cap_flags);
	} else {
		FUNC6(rt2x00dev, FIRMWARE_IMAGE_BASE,
					      data + offset, length);
	}

	FUNC7(rt2x00dev, H2M_MAILBOX_CID, ~0);
	FUNC7(rt2x00dev, H2M_MAILBOX_STATUS, ~0);

	/*
	 * Send firmware request to device to load firmware,
	 * we need to specify a long timeout time.
	 */
	status = FUNC8(rt2x00dev, USB_DEVICE_MODE,
					     0, USB_MODE_FIRMWARE,
					     REGISTER_TIMEOUT_FIRMWARE);
	if (status < 0) {
		FUNC3(rt2x00dev, "Failed to write Firmware to device\n");
		return status;
	}

	FUNC1(10);
	FUNC7(rt2x00dev, H2M_MAILBOX_CSR, 0);

	return 0;
}