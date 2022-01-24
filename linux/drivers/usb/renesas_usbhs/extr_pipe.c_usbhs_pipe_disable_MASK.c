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
typedef  int /*<<< orphan*/  u16 ;
struct usbhs_pipe {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PBUSY ; 
 int /*<<< orphan*/  PID_MASK ; 
 int /*<<< orphan*/  PID_NAK ; 
 int /*<<< orphan*/  FUNC0 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC3 (struct usbhs_pipe*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct usbhs_pipe *pipe)
{
	int timeout = 1024;
	u16 val;

	/* see "Pipe n Control Register" - "PID" */
	FUNC0(pipe);

	FUNC3(pipe, PID_MASK, PID_NAK);

	do {
		val  = FUNC2(pipe);
		val &= PBUSY;
		if (!val)
			break;

		FUNC1(10);
	} while (timeout--);
}