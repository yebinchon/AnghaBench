#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usb_hcd {int dummy; } ;
struct oxu_hcd {TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  configured_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct oxu_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct oxu_hcd*) ; 
 struct oxu_hcd* FUNC2 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct usb_hcd *hcd)
{
	struct oxu_hcd *oxu = FUNC2(hcd);

	(void) FUNC0(oxu);
	FUNC1(oxu);

	/* make BIOS/etc use companion controller during reboot */
	FUNC4(0, &oxu->regs->configured_flag);

	/* unblock posted writes */
	FUNC3(&oxu->regs->configured_flag);
}