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
struct hotplug_slot {int dummy; } ;
struct controller {int state; int request_result; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  pending_events; int /*<<< orphan*/  requester; } ;

/* Variables and functions */
#define  BLINKINGOFF_STATE 133 
#define  BLINKINGON_STATE 132 
 int ENODEV ; 
#define  OFF_STATE 131 
#define  ON_STATE 130 
 int /*<<< orphan*/  PCI_EXP_SLTSTA_PDC ; 
#define  POWEROFF_STATE 129 
#define  POWERON_STATE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct controller*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct controller*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct controller*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct controller*) ; 
 struct controller* FUNC7 (struct hotplug_slot*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

int FUNC9(struct hotplug_slot *hotplug_slot)
{
	struct controller *ctrl = FUNC7(hotplug_slot);

	FUNC3(&ctrl->state_lock);
	switch (ctrl->state) {
	case BLINKINGON_STATE:
	case OFF_STATE:
		FUNC4(&ctrl->state_lock);
		/*
		 * The IRQ thread becomes a no-op if the user pulls out the
		 * card before the thread wakes up, so initialize to -ENODEV.
		 */
		ctrl->request_result = -ENODEV;
		FUNC5(ctrl, PCI_EXP_SLTSTA_PDC);
		FUNC8(ctrl->requester,
			   !FUNC0(&ctrl->pending_events));
		return ctrl->request_result;
	case POWERON_STATE:
		FUNC2(ctrl, "Slot(%s): Already in powering on state\n",
			  FUNC6(ctrl));
		break;
	case BLINKINGOFF_STATE:
	case ON_STATE:
	case POWEROFF_STATE:
		FUNC2(ctrl, "Slot(%s): Already enabled\n",
			  FUNC6(ctrl));
		break;
	default:
		FUNC1(ctrl, "Slot(%s): Invalid state %#x\n",
			 FUNC6(ctrl), ctrl->state);
		break;
	}
	FUNC4(&ctrl->state_lock);

	return -ENODEV;
}