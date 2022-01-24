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
 int /*<<< orphan*/  BFRE ; 
 int /*<<< orphan*/  FUNC0 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC1 (struct usbhs_pipe*,int) ; 
 int FUNC2 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC3 (struct usbhs_pipe*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usbhs_pipe*) ; 

void FUNC5(struct usbhs_pipe *pipe,
				       int needs_bfre, int bfre_enable)
{
	int sequence;

	FUNC4(pipe);
	sequence = FUNC2(pipe);
	if (needs_bfre)
		FUNC3(pipe, BFRE, bfre_enable ? BFRE : 0);
	FUNC0(pipe);
	FUNC1(pipe, sequence);
}