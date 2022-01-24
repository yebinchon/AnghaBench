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
struct controller {scalar_t__ state; int /*<<< orphan*/  reset_lock; int /*<<< orphan*/  state_lock; } ;

/* Variables and functions */
 scalar_t__ BLINKINGOFF_STATE ; 
 scalar_t__ BLINKINGON_STATE ; 
 scalar_t__ OFF_STATE ; 
 scalar_t__ ON_STATE ; 
 int /*<<< orphan*/  PCI_EXP_SLTSTA_PDC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct controller*) ; 
 int /*<<< orphan*/  FUNC4 (struct controller*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct controller *ctrl)
{
	bool occupied;

	FUNC0(&ctrl->reset_lock);
	FUNC1(&ctrl->state_lock);

	occupied = FUNC3(ctrl);
	if ((occupied && (ctrl->state == OFF_STATE ||
			  ctrl->state == BLINKINGON_STATE)) ||
	    (!occupied && (ctrl->state == ON_STATE ||
			   ctrl->state == BLINKINGOFF_STATE)))
		FUNC4(ctrl, PCI_EXP_SLTSTA_PDC);

	FUNC2(&ctrl->state_lock);
	FUNC5(&ctrl->reset_lock);
}