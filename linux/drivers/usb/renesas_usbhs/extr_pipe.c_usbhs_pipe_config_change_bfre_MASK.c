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
 int BFRE ; 
 int /*<<< orphan*/  FUNC0 (struct usbhs_pipe*,int,int) ; 
 scalar_t__ FUNC1 (struct usbhs_pipe*) ; 
 int FUNC2 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC3 (struct usbhs_pipe*) ; 

void FUNC4(struct usbhs_pipe *pipe, int enable)
{
	if (FUNC1(pipe))
		return;

	FUNC3(pipe);
	/* check if the driver needs to change the BFRE value */
	if (!(enable ^ !!(FUNC2(pipe) & BFRE)))
		return;

	FUNC0(pipe, 1, enable);
}