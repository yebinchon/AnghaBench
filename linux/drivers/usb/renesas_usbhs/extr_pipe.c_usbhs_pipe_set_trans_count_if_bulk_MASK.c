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
struct usbhs_pipe {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int TRCLR ; 
 int TRENB ; 
 int /*<<< orphan*/  USB_ENDPOINT_XFER_BULK ; 
 int FUNC1 (struct usbhs_pipe*) ; 
 scalar_t__ FUNC2 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC3 (struct usbhs_pipe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usbhs_pipe*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usbhs_pipe*,int,int /*<<< orphan*/ ) ; 

void FUNC6(struct usbhs_pipe *pipe, int len)
{
	if (!FUNC3(pipe, USB_ENDPOINT_XFER_BULK))
		return;

	/*
	 * clear and disable transfer counter for IN/OUT pipe
	 */
	FUNC4(pipe, TRCLR | TRENB, TRCLR);

	/*
	 * Only IN direction bulk pipe can use transfer count.
	 * Without using this function,
	 * received data will break if it was large data size.
	 * see PIPEnTRN/PIPEnTRE for detail
	 */
	if (FUNC2(pipe)) {
		int maxp = FUNC1(pipe);

		FUNC5(pipe, 0xffff, FUNC0(len, maxp));
		FUNC4(pipe, TRENB, TRENB); /* enable */
	}
}