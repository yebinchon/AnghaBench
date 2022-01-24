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
struct controller {int state; int /*<<< orphan*/  request_result; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  button_work; } ;

/* Variables and functions */
#define  BLINKINGOFF_STATE 129 
#define  BLINKINGON_STATE 128 
 int POWEROFF_STATE ; 
 int /*<<< orphan*/  SAFE_REMOVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct controller*,int /*<<< orphan*/ ) ; 

void FUNC4(struct controller *ctrl)
{
	FUNC1(&ctrl->state_lock);
	switch (ctrl->state) {
	case BLINKINGON_STATE:
	case BLINKINGOFF_STATE:
		FUNC0(&ctrl->button_work);
		break;
	}
	ctrl->state = POWEROFF_STATE;
	FUNC2(&ctrl->state_lock);

	ctrl->request_result = FUNC3(ctrl, SAFE_REMOVAL);
}