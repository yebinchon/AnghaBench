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
struct usb_serial {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct usb_serial*,int,int*) ; 
 int FUNC3 (struct usb_serial*,int,int) ; 

__attribute__((used)) static int FUNC4(struct usb_serial *serial, u8 reg, u8 mask, u8 val)
{
	int ret = 0;
	u8 *buf;

	buf = FUNC1(1, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	ret = FUNC2(serial, reg | 0x80, buf);
	if (ret)
		goto out_free;

	*buf &= ~mask;
	*buf |= val & mask;

	ret = FUNC3(serial, reg, *buf);
out_free:
	FUNC0(buf);

	return ret;
}