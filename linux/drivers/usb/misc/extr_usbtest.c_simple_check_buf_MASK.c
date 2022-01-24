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
typedef  scalar_t__ u8 ;
struct usbtest_dev {int dummy; } ;
struct urb {unsigned int actual_length; int /*<<< orphan*/  pipe; int /*<<< orphan*/  dev; scalar_t__* transfer_buffer; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct usbtest_dev*,char*,unsigned int,scalar_t__,scalar_t__) ; 
 int FUNC1 (struct usbtest_dev*,struct urb*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int pattern ; 

__attribute__((used)) static int FUNC3(struct usbtest_dev *tdev, struct urb *urb)
{
	unsigned	i;
	u8		expected;
	u8		*buf = urb->transfer_buffer;
	unsigned	len = urb->actual_length;
	unsigned	maxpacket = FUNC2(urb->dev, urb->pipe);

	int ret = FUNC1(tdev, urb);
	if (ret)
		return ret;

	for (i = 0; i < len; i++, buf++) {
		switch (pattern) {
		/* all-zeroes has no synchronization issues */
		case 0:
			expected = 0;
			break;
		/* mod63 stays in sync with short-terminated transfers,
		 * or otherwise when host and gadget agree on how large
		 * each usb transfer request should be.  resync is done
		 * with set_interface or set_config.
		 */
		case 1:			/* mod63 */
			expected = (i % maxpacket) % 63;
			break;
		/* always fail unsupported patterns */
		default:
			expected = !*buf;
			break;
		}
		if (*buf == expected)
			continue;
		FUNC0(tdev, "buf[%d] = %d (not %d)\n", i, *buf, expected);
		return -EINVAL;
	}
	return 0;
}