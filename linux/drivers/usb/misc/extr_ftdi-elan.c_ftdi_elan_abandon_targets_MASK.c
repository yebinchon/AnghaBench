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
struct usb_ftdi {int expected; int /*<<< orphan*/  u132_lock; scalar_t__ ed_found; scalar_t__ received; struct u132_target* target; } ;
struct u132_target {int active; int /*<<< orphan*/  condition_code; } ;

/* Variables and functions */
 int /*<<< orphan*/  TD_DEVNOTRESP ; 
 int /*<<< orphan*/  FUNC0 (struct usb_ftdi*,struct u132_target*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct usb_ftdi *ftdi)
{
	int ed_number = 4;
	FUNC1(&ftdi->u132_lock);
	while (ed_number-- > 0) {
		struct u132_target *target = &ftdi->target[ed_number];
		if (target->active == 1) {
			target->condition_code = TD_DEVNOTRESP;
			FUNC2(&ftdi->u132_lock);
			FUNC0(ftdi, target, NULL, 0);
			FUNC1(&ftdi->u132_lock);
		}
	}
	ftdi->received = 0;
	ftdi->expected = 4;
	ftdi->ed_found = 0;
	FUNC2(&ftdi->u132_lock);
}