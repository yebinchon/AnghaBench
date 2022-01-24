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
struct usbtest_dev {int dummy; } ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int EBADMSG ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct usbtest_dev*,char*,...) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USB_CTRL_GET_TIMEOUT ; 
 int /*<<< orphan*/  USB_CTRL_SET_TIMEOUT ; 
 int USB_DIR_IN ; 
 int USB_DIR_OUT ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ realworld ; 
 struct usb_device* FUNC3 (struct usbtest_dev*) ; 
 int FUNC4 (struct usb_device*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct usbtest_dev *dev,
		unsigned count, unsigned length, unsigned vary, unsigned offset)
{
	unsigned		i, j, len;
	int			retval;
	u8			*buf;
	char			*what = "?";
	struct usb_device	*udev;

	if (length < 1 || length > 0xffff || vary >= length)
		return -EINVAL;

	buf = FUNC2(length + offset, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	buf += offset;
	udev = FUNC3(dev);
	len = length;
	retval = 0;

	/* NOTE:  hardware might well act differently if we pushed it
	 * with lots back-to-back queued requests.
	 */
	for (i = 0; i < count; i++) {
		/* write patterned data */
		for (j = 0; j < len; j++)
			buf[j] = (u8)(i + j);
		retval = FUNC4(udev, FUNC6(udev, 0),
				0x5b, USB_DIR_OUT|USB_TYPE_VENDOR,
				0, 0, buf, len, USB_CTRL_SET_TIMEOUT);
		if (retval != len) {
			what = "write";
			if (retval >= 0) {
				FUNC0(dev, "ctrl_out, wlen %d (expected %d)\n",
						retval, len);
				retval = -EBADMSG;
			}
			break;
		}

		/* read it back -- assuming nothing intervened!!  */
		retval = FUNC4(udev, FUNC5(udev, 0),
				0x5c, USB_DIR_IN|USB_TYPE_VENDOR,
				0, 0, buf, len, USB_CTRL_GET_TIMEOUT);
		if (retval != len) {
			what = "read";
			if (retval >= 0) {
				FUNC0(dev, "ctrl_out, rlen %d (expected %d)\n",
						retval, len);
				retval = -EBADMSG;
			}
			break;
		}

		/* fail if we can't verify */
		for (j = 0; j < len; j++) {
			if (buf[j] != (u8)(i + j)) {
				FUNC0(dev, "ctrl_out, byte %d is %d not %d\n",
					j, buf[j], (u8)(i + j));
				retval = -EBADMSG;
				break;
			}
		}
		if (retval < 0) {
			what = "verify";
			break;
		}

		len += vary;

		/* [real world] the "zero bytes IN" case isn't really used.
		 * hardware can easily trip up in this weird case, since its
		 * status stage is IN, not OUT like other ep0in transfers.
		 */
		if (len > length)
			len = realworld ? 1 : 0;
	}

	if (retval < 0)
		FUNC0(dev, "ctrl_out %s failed, code %d, count %d\n",
			what, retval, i);

	FUNC1(buf - offset);
	return retval;
}