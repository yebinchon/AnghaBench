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
struct controller {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_EXP_SLTCTL_ATTN_IND_ON ; 
 int /*<<< orphan*/  PCI_EXP_SLTCTL_PWR_IND_OFF ; 
 scalar_t__ FUNC0 (struct controller*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct controller*) ; 
 int /*<<< orphan*/  FUNC3 (struct controller*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct controller *ctrl)
{
	/*
	 * Turn off slot, turn on attention indicator, turn off power
	 * indicator
	 */
	if (FUNC0(ctrl)) {
		FUNC2(ctrl);

		/*
		 * After turning power off, we must wait for at least 1 second
		 * before taking any action that relies on power having been
		 * removed from the slot/adapter.
		 */
		FUNC1(1000);
	}

	FUNC3(ctrl, PCI_EXP_SLTCTL_PWR_IND_OFF,
			      PCI_EXP_SLTCTL_ATTN_IND_ON);
}