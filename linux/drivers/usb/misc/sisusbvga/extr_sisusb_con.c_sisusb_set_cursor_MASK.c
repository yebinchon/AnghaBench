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
struct sisusb_usb_data {unsigned int sisusb_cursor_loc; int bad_cursor_pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  SISCR ; 
 scalar_t__ FUNC0 (struct sisusb_usb_data*,int /*<<< orphan*/ ,int,unsigned int) ; 
 scalar_t__ FUNC1 (struct sisusb_usb_data*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC2 (struct sisusb_usb_data*,int /*<<< orphan*/ ,int,int,int) ; 

void
FUNC3(struct sisusb_usb_data *sisusb, unsigned int location)
{
	if (sisusb->sisusb_cursor_loc == location)
		return;

	sisusb->sisusb_cursor_loc = location;

	/* Hardware bug: Text cursor appears twice or not at all
	 * at some positions. Work around it with the cursor skew
	 * bits.
	 */

	if ((location & 0x0007) == 0x0007) {
		sisusb->bad_cursor_pos = 1;
		location--;
		if (FUNC2(sisusb, SISCR, 0x0b, 0x1f, 0x20))
			return;
	} else if (sisusb->bad_cursor_pos) {
		if (FUNC1(sisusb, SISCR, 0x0b, 0x1f))
			return;
		sisusb->bad_cursor_pos = 0;
	}

	if (FUNC0(sisusb, SISCR, 0x0e, (location >> 8)))
		return;
	FUNC0(sisusb, SISCR, 0x0f, (location & 0xff));
}