#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {unsigned int handle; int /*<<< orphan*/  timeout_attr; scalar_t__ has_timeout; int /*<<< orphan*/  mode_attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* kbdbl_ctl ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(struct platform_device *pd,
		unsigned int handle)
{
	if (kbdbl_ctl && handle == kbdbl_ctl->handle) {
		FUNC0(&pd->dev, &kbdbl_ctl->mode_attr);
		if (kbdbl_ctl->has_timeout)
			FUNC0(&pd->dev, &kbdbl_ctl->timeout_attr);
		FUNC1(kbdbl_ctl);
		kbdbl_ctl = NULL;
	}
}