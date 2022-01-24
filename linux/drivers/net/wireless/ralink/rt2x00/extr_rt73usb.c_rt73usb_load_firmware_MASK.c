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
typedef  scalar_t__ u32 ;
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FIRMWARE_IMAGE_BASE ; 
 int /*<<< orphan*/  MAC_CSR0 ; 
 int /*<<< orphan*/  REGISTER_TIMEOUT_FIRMWARE ; 
 int /*<<< orphan*/  USB_DEVICE_MODE ; 
 int /*<<< orphan*/  USB_MODE_FIRMWARE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t const) ; 
 scalar_t__ FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct rt2x00_dev *rt2x00dev,
				 const u8 *data, const size_t len)
{
	unsigned int i;
	int status;
	u32 reg;

	/*
	 * Wait for stable hardware.
	 */
	for (i = 0; i < 100; i++) {
		reg = FUNC3(rt2x00dev, MAC_CSR0);
		if (reg)
			break;
		FUNC0(1);
	}

	if (!reg) {
		FUNC1(rt2x00dev, "Unstable hardware\n");
		return -EBUSY;
	}

	/*
	 * Write firmware to device.
	 */
	FUNC2(rt2x00dev, FIRMWARE_IMAGE_BASE, data, len);

	/*
	 * Send firmware request to device to load firmware,
	 * we need to specify a long timeout time.
	 */
	status = FUNC4(rt2x00dev, USB_DEVICE_MODE,
					     0, USB_MODE_FIRMWARE,
					     REGISTER_TIMEOUT_FIRMWARE);
	if (status < 0) {
		FUNC1(rt2x00dev, "Failed to write Firmware to device\n");
		return status;
	}

	return 0;
}