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
struct usb_serial {struct usb_device* dev; } ;
struct usb_device {int /*<<< orphan*/  dev; } ;
typedef  enum mos_regs { ____Placeholder_mos_regs } mos_regs ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MOS_WDR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct usb_device*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct usb_serial *serial, unsigned int serial_portnum,
			enum mos_regs reg, __u8 *data)
{
	struct usb_device *usbdev = serial->dev;
	unsigned int pipe = FUNC6(usbdev, 0);
	__u8 request = (__u8)0x0d;
	__u8 requesttype = (__u8)0xc0;
	__u16 index = FUNC1(reg);
	__u16 value = FUNC2(reg, serial_portnum);
	u8 *buf;
	int status;

	buf = FUNC4(1, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	status = FUNC5(usbdev, pipe, request, requesttype, value,
				     index, buf, 1, MOS_WDR_TIMEOUT);
	if (status == 1) {
		*data = *buf;
	} else {
		FUNC0(&usbdev->dev,
			"mos7720: usb_control_msg() failed: %d\n", status);
		if (status >= 0)
			status = -EIO;
		*data = 0;
	}

	FUNC3(buf);

	return status;
}