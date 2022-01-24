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
typedef  int /*<<< orphan*/  zd_addr_t ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct zd_usb {int dummy; } ;
struct usb_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int USB_DIR_IN ; 
 int /*<<< orphan*/  USB_REQ_FIRMWARE_READ_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*,int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC6 (struct zd_usb*) ; 

int FUNC7(struct zd_usb *usb, zd_addr_t addr, u8 *data, u16 len)
{
	int r;
	struct usb_device *udev = FUNC6(usb);
	u8 *buf;

	/* Use "DMA-aware" buffer. */
	buf = FUNC2(len, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;
	r = FUNC4(udev, FUNC5(udev, 0),
		USB_REQ_FIRMWARE_READ_DATA, USB_DIR_IN | 0x40, addr, 0,
		buf, len, 5000);
	if (r < 0) {
		FUNC0(&udev->dev,
			"read over firmware interface failed: %d\n", r);
		goto exit;
	} else if (r != len) {
		FUNC0(&udev->dev,
			"incomplete read over firmware interface: %d/%d\n",
			r, len);
		r = -EIO;
		goto exit;
	}
	r = 0;
	FUNC3(data, buf, len);
exit:
	FUNC1(buf);
	return r;
}