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
struct usbtest_dev {int dummy; } ;
struct usb_ext_cap_descriptor {scalar_t__ bLength; int /*<<< orphan*/  bmAttributes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usbtest_dev*,char*) ; 
 scalar_t__ USB_DT_USB_EXT_CAP_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct usbtest_dev *tdev, u8 *buf)
{
	struct usb_ext_cap_descriptor *ext;
	u32 attr;

	ext = (struct usb_ext_cap_descriptor *) buf;

	if (ext->bLength != USB_DT_USB_EXT_CAP_SIZE) {
		FUNC0(tdev, "bogus usb 2.0 extension descriptor length\n");
		return 0;
	}

	attr = FUNC1(ext->bmAttributes);
	/* bits[1:15] is used and others are reserved */
	if (attr & ~0xfffe) {	/* reserved == 0 */
		FUNC0(tdev, "reserved bits set\n");
		return 0;
	}

	return 1;
}