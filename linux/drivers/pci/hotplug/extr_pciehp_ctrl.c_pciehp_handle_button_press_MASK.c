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
struct controller {int state; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  button_work; } ;

/* Variables and functions */
#define  BLINKINGOFF_STATE 131 
#define  BLINKINGON_STATE 130 
 int HZ ; 
#define  OFF_STATE 129 
#define  ON_STATE 128 
 int /*<<< orphan*/  PCI_EXP_SLTCTL_ATTN_IND_OFF ; 
 int /*<<< orphan*/  PCI_EXP_SLTCTL_PWR_IND_BLINK ; 
 int /*<<< orphan*/  PCI_EXP_SLTCTL_PWR_IND_OFF ; 
 int /*<<< orphan*/  PCI_EXP_SLTCTL_PWR_IND_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct controller*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct controller*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct controller*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct controller*) ; 

void FUNC8(struct controller *ctrl)
{
	FUNC3(&ctrl->state_lock);
	switch (ctrl->state) {
	case OFF_STATE:
	case ON_STATE:
		if (ctrl->state == ON_STATE) {
			ctrl->state = BLINKINGOFF_STATE;
			FUNC2(ctrl, "Slot(%s): Powering off due to button press\n",
				  FUNC7(ctrl));
		} else {
			ctrl->state = BLINKINGON_STATE;
			FUNC2(ctrl, "Slot(%s) Powering on due to button press\n",
				  FUNC7(ctrl));
		}
		/* blink power indicator and turn off attention */
		FUNC5(ctrl, PCI_EXP_SLTCTL_PWR_IND_BLINK,
				      PCI_EXP_SLTCTL_ATTN_IND_OFF);
		FUNC6(&ctrl->button_work, 5 * HZ);
		break;
	case BLINKINGOFF_STATE:
	case BLINKINGON_STATE:
		/*
		 * Cancel if we are still blinking; this means that we
		 * press the attention again before the 5 sec. limit
		 * expires to cancel hot-add or hot-remove
		 */
		FUNC2(ctrl, "Slot(%s): Button cancel\n", FUNC7(ctrl));
		FUNC0(&ctrl->button_work);
		if (ctrl->state == BLINKINGOFF_STATE) {
			ctrl->state = ON_STATE;
			FUNC5(ctrl, PCI_EXP_SLTCTL_PWR_IND_ON,
					      PCI_EXP_SLTCTL_ATTN_IND_OFF);
		} else {
			ctrl->state = OFF_STATE;
			FUNC5(ctrl, PCI_EXP_SLTCTL_PWR_IND_OFF,
					      PCI_EXP_SLTCTL_ATTN_IND_OFF);
		}
		FUNC2(ctrl, "Slot(%s): Action canceled due to button press\n",
			  FUNC7(ctrl));
		break;
	default:
		FUNC1(ctrl, "Slot(%s): Ignoring invalid state %#x\n",
			 FUNC7(ctrl), ctrl->state);
		break;
	}
	FUNC4(&ctrl->state_lock);
}