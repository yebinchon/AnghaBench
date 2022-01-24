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
 scalar_t__ FUNC0 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC1 (struct usbhs_pipe*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct usbhs_pipe*,int) ; 

__attribute__((used)) static void FUNC3(struct usbhs_pipe *pipe, int enable)
{
	/*
	 * And DCP pipe can NOT use "ready interrupt" for "send"
	 * it should use "empty" interrupt.
	 * see
	 *   "Operation" - "Interrupt Function" - "BRDY Interrupt"
	 *
	 * on the other hand, normal pipe can use "ready interrupt" for "send"
	 * even though it is single/double buffer
	 */
	if (FUNC0(pipe))
		FUNC1(pipe, enable);
	else
		FUNC2(pipe, enable);
}