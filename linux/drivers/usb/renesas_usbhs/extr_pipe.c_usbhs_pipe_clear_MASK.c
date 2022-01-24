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
 int /*<<< orphan*/  ACLRM ; 
 int /*<<< orphan*/  FUNC0 (struct usbhs_pipe*) ; 
 scalar_t__ FUNC1 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbhs_pipe*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct usbhs_pipe *pipe)
{
	if (FUNC1(pipe)) {
		FUNC0(pipe);
	} else {
		FUNC2(pipe, ACLRM, ACLRM);
		FUNC2(pipe, ACLRM, 0);
	}
}