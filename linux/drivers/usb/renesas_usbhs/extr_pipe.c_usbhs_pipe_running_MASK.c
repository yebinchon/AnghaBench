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
 int /*<<< orphan*/  IS_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct usbhs_pipe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usbhs_pipe*,int /*<<< orphan*/ ) ; 

void FUNC2(struct usbhs_pipe *pipe, int running)
{
	if (running)
		FUNC1(pipe, IS_RUNNING);
	else
		FUNC0(pipe, IS_RUNNING);
}