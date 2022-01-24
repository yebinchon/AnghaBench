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
struct controller {int /*<<< orphan*/  pending_events; } ;

/* Variables and functions */
 int /*<<< orphan*/  INDICATOR_NOOP ; 
 int /*<<< orphan*/  PCI_EXP_SLTCTL_PWR_IND_OFF ; 
 int PCI_EXP_SLTSTA_DLLSC ; 
 int PCI_EXP_SLTSTA_PDC ; 
 scalar_t__ FUNC0 (struct controller*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct controller*) ; 
 int /*<<< orphan*/  FUNC4 (struct controller*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct controller*,int) ; 

__attribute__((used)) static void FUNC6(struct controller *ctrl, bool safe_removal)
{
	FUNC5(ctrl, safe_removal);

	if (FUNC0(ctrl)) {
		FUNC3(ctrl);

		/*
		 * After turning power off, we must wait for at least 1 second
		 * before taking any action that relies on power having been
		 * removed from the slot/adapter.
		 */
		FUNC2(1000);

		/* Ignore link or presence changes caused by power off */
		FUNC1(~(PCI_EXP_SLTSTA_DLLSC | PCI_EXP_SLTSTA_PDC),
			   &ctrl->pending_events);
	}

	FUNC4(ctrl, PCI_EXP_SLTCTL_PWR_IND_OFF,
			      INDICATOR_NOOP);
}