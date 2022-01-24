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
struct slot {int state; int /*<<< orphan*/  lock; int /*<<< orphan*/  work; struct controller* ctrl; } ;
struct controller {int dummy; } ;

/* Variables and functions */
#define  BLINKINGOFF_STATE 132 
#define  BLINKINGON_STATE 131 
 int ENODEV ; 
#define  POWEROFF_STATE 130 
#define  POWERON_STATE 129 
#define  STATIC_STATE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct controller*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct controller*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct slot*) ; 
 int /*<<< orphan*/  FUNC6 (struct slot*) ; 

int FUNC7(struct slot *p_slot)
{
	int retval = -ENODEV;
	struct controller *ctrl = p_slot->ctrl;

	FUNC3(&p_slot->lock);
	switch (p_slot->state) {
	case BLINKINGOFF_STATE:
		FUNC0(&p_slot->work);
		/* fall through */
	case STATIC_STATE:
		p_slot->state = POWEROFF_STATE;
		FUNC4(&p_slot->lock);
		retval = FUNC5(p_slot);
		FUNC3(&p_slot->lock);
		p_slot->state = STATIC_STATE;
		break;
	case POWEROFF_STATE:
		FUNC2(ctrl, "Slot %s is already in powering off state\n",
			  FUNC6(p_slot));
		break;
	case BLINKINGON_STATE:
	case POWERON_STATE:
		FUNC2(ctrl, "Already disabled on slot %s\n",
			  FUNC6(p_slot));
		break;
	default:
		FUNC1(ctrl, "Not a valid state on slot %s\n",
			 FUNC6(p_slot));
		break;
	}
	FUNC4(&p_slot->lock);

	return retval;
}