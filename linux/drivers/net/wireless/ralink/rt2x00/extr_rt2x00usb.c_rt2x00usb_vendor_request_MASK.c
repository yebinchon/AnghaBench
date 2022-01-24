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
typedef  int /*<<< orphan*/  u16 ;
struct usb_device {int dummy; } ;
struct rt2x00_dev {int /*<<< orphan*/  flags; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_STATE_PRESENT ; 
 int ENODEV ; 
 int /*<<< orphan*/  const USB_VENDOR_REQUEST_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int const) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,char*,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int) ; 
 scalar_t__ FUNC3 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 
 struct usb_device* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct usb_device*,unsigned int,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,void*,int /*<<< orphan*/  const,int const) ; 
 unsigned int FUNC8 (struct usb_device*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (struct usb_device*,int /*<<< orphan*/ ) ; 

int FUNC10(struct rt2x00_dev *rt2x00dev,
			     const u8 request, const u8 requesttype,
			     const u16 offset, const u16 value,
			     void *buffer, const u16 buffer_length,
			     const int timeout)
{
	struct usb_device *usb_dev = FUNC6(rt2x00dev->dev);
	int status;
	unsigned int pipe =
	    (requesttype == USB_VENDOR_REQUEST_IN) ?
	    FUNC8(usb_dev, 0) : FUNC9(usb_dev, 0);
	unsigned long expire = jiffies + FUNC1(timeout);

	if (!FUNC4(DEVICE_STATE_PRESENT, &rt2x00dev->flags))
		return -ENODEV;

	do {
		status = FUNC7(usb_dev, pipe, request, requesttype,
					 value, offset, buffer, buffer_length,
					 timeout / 2);
		if (status >= 0)
			return 0;

		if (FUNC3(rt2x00dev, status)) {
			/* Device has disappeared. */
			FUNC0(DEVICE_STATE_PRESENT, &rt2x00dev->flags);
			break;
		}
	} while (FUNC5(jiffies, expire));

	FUNC2(rt2x00dev,
		   "Vendor Request 0x%02x failed for offset 0x%04x with error %d\n",
		   request, offset, status);

	return status;
}