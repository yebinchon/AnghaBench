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
struct controller {scalar_t__ notification_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct controller*) ; 
 int /*<<< orphan*/  FUNC1 (struct controller*) ; 

void FUNC2(struct controller *ctrl)
{
	if (ctrl->notification_enabled) {
		FUNC0(ctrl);
		FUNC1(ctrl);
		ctrl->notification_enabled = 0;
	}
}