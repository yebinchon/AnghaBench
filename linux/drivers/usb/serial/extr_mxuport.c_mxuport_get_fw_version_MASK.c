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
typedef  int u8 ;
typedef  int u32 ;
struct usb_serial {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RQ_VENDOR_GET_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct usb_serial*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC3(struct usb_serial *serial, u32 *version)
{
	u8 *ver_buf;
	int err;

	ver_buf = FUNC1(4, GFP_KERNEL);
	if (!ver_buf)
		return -ENOMEM;

	/* Get firmware version from SDRAM */
	err = FUNC2(serial, RQ_VENDOR_GET_VERSION, 0, 0,
				    ver_buf, 4);
	if (err != 4) {
		err = -EIO;
		goto out;
	}

	*version = (ver_buf[0] << 16) | (ver_buf[1] << 8) | ver_buf[2];
	err = 0;
out:
	FUNC0(ver_buf);
	return err;
}