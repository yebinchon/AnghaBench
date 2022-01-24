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
struct usb_serial {struct usb_device* dev; } ;
struct usb_device {int /*<<< orphan*/  dev; } ;
typedef  enum mos_regs { ____Placeholder_mos_regs } mos_regs ;
typedef  scalar_t__ __u8 ;
typedef  scalar_t__ __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  MOS_WDR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,unsigned int) ; 
 int FUNC3 (struct usb_device*,unsigned int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct usb_serial *serial, unsigned int serial_portnum,
			 enum mos_regs reg, __u8 data)
{
	struct usb_device *usbdev = serial->dev;
	unsigned int pipe = FUNC4(usbdev, 0);
	__u8 request = (__u8)0x0e;
	__u8 requesttype = (__u8)0x40;
	__u16 index = FUNC1(reg);
	__u16 value = FUNC2(reg, serial_portnum) + data;
	int status = FUNC3(usbdev, pipe, request, requesttype, value,
				     index, NULL, 0, MOS_WDR_TIMEOUT);
	if (status < 0)
		FUNC0(&usbdev->dev,
			"mos7720: usb_control_msg() failed: %d\n", status);
	return status;
}