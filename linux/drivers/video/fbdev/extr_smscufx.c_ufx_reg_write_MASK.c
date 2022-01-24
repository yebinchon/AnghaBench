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
typedef  int /*<<< orphan*/  u32 ;
struct ufx_data {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USB_CTRL_SET_TIMEOUT ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  USB_VENDOR_REQUEST_WRITE_REGISTER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct ufx_data *dev, u32 index, u32 data)
{
	u32 *buf = FUNC3(4, GFP_KERNEL);
	int ret;

	FUNC0(!dev);

	if (!buf)
		return -ENOMEM;

	*buf = data;
	FUNC1(buf);

	ret = FUNC6(dev->udev, FUNC7(dev->udev, 0),
		USB_VENDOR_REQUEST_WRITE_REGISTER,
		USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
		00, index, buf, 4, USB_CTRL_SET_TIMEOUT);

	FUNC2(buf);

	if (FUNC5(ret < 0))
		FUNC4("Failed to write register index 0x%08x with value "
			"0x%08x\n", index, data);

	return ret;
}