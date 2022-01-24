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
typedef  int u32 ;
struct controller {int state; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  request_result; int /*<<< orphan*/  button_work; } ;

/* Variables and functions */
#define  BLINKINGOFF_STATE 131 
#define  BLINKINGON_STATE 130 
#define  OFF_STATE 129 
#define  ON_STATE 128 
 int PCI_EXP_SLTSTA_DLLSC ; 
 int PCI_EXP_SLTSTA_PDC ; 
 int POWEROFF_STATE ; 
 int POWERON_STATE ; 
 int /*<<< orphan*/  SURPRISE_REMOVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct controller*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct controller*) ; 
 int FUNC5 (struct controller*) ; 
 int /*<<< orphan*/  FUNC6 (struct controller*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct controller*) ; 
 int /*<<< orphan*/  FUNC8 (struct controller*) ; 

void FUNC9(struct controller *ctrl, u32 events)
{
	bool present, link_active;

	/*
	 * If the slot is on and presence or link has changed, turn it off.
	 * Even if it's occupied again, we cannot assume the card is the same.
	 */
	FUNC2(&ctrl->state_lock);
	switch (ctrl->state) {
	case BLINKINGOFF_STATE:
		FUNC0(&ctrl->button_work);
		/* fall through */
	case ON_STATE:
		ctrl->state = POWEROFF_STATE;
		FUNC3(&ctrl->state_lock);
		if (events & PCI_EXP_SLTSTA_DLLSC)
			FUNC1(ctrl, "Slot(%s): Link Down\n",
				  FUNC8(ctrl));
		if (events & PCI_EXP_SLTSTA_PDC)
			FUNC1(ctrl, "Slot(%s): Card not present\n",
				  FUNC8(ctrl));
		FUNC6(ctrl, SURPRISE_REMOVAL);
		break;
	default:
		FUNC3(&ctrl->state_lock);
		break;
	}

	/* Turn the slot on if it's occupied or link is up */
	FUNC2(&ctrl->state_lock);
	present = FUNC4(ctrl);
	link_active = FUNC5(ctrl);
	if (!present && !link_active) {
		FUNC3(&ctrl->state_lock);
		return;
	}

	switch (ctrl->state) {
	case BLINKINGON_STATE:
		FUNC0(&ctrl->button_work);
		/* fall through */
	case OFF_STATE:
		ctrl->state = POWERON_STATE;
		FUNC3(&ctrl->state_lock);
		if (present)
			FUNC1(ctrl, "Slot(%s): Card present\n",
				  FUNC8(ctrl));
		if (link_active)
			FUNC1(ctrl, "Slot(%s): Link Up\n",
				  FUNC8(ctrl));
		ctrl->request_result = FUNC7(ctrl);
		break;
	default:
		FUNC3(&ctrl->state_lock);
		break;
	}
}