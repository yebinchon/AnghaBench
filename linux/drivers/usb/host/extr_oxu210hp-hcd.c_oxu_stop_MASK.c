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
struct usb_hcd {int /*<<< orphan*/  state; } ;
struct oxu_hcd {TYPE_1__* regs; int /*<<< orphan*/  lock; scalar_t__ async; int /*<<< orphan*/  watchdog; } ;
struct TYPE_2__ {int /*<<< orphan*/  status; int /*<<< orphan*/  configured_flag; int /*<<< orphan*/  intr_enable; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct oxu_hcd*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct oxu_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (struct oxu_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct oxu_hcd*) ; 
 int /*<<< orphan*/  FUNC6 (struct oxu_hcd*) ; 
 int /*<<< orphan*/  FUNC7 (struct oxu_hcd*) ; 
 struct oxu_hcd* FUNC8 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct usb_hcd *hcd)
{
	struct oxu_hcd *oxu = FUNC8(hcd);

	/* Turn off port power on all root hub ports. */
	FUNC4(oxu, 0);

	/* no more interrupts ... */
	FUNC2(&oxu->watchdog);

	FUNC10(&oxu->lock);
	if (FUNC0(hcd->state))
		FUNC5(oxu);

	FUNC6(oxu);
	FUNC12(0, &oxu->regs->intr_enable);
	FUNC11(&oxu->lock);

	/* let companion controllers work when we aren't */
	FUNC12(0, &oxu->regs->configured_flag);

	/* root hub is shut down separately (first, when possible) */
	FUNC10(&oxu->lock);
	if (oxu->async)
		FUNC7(oxu);
	FUNC11(&oxu->lock);
	FUNC3(oxu);

	FUNC1(oxu, "oxu_stop completed", FUNC9(&oxu->regs->status));
}