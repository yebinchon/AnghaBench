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
struct controller {struct controller* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 struct controller* cpqhp_ctrl_list ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct controller*) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ pushbutton_pending ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void *data)
{
	struct controller *ctrl;

	while (1) {
		FUNC1("!!!!event_thread sleeping\n");
		FUNC5(TASK_INTERRUPTIBLE);
		FUNC4();

		if (FUNC3())
			break;
		/* Do stuff here */
		if (pushbutton_pending)
			FUNC0(pushbutton_pending);
		else
			for (ctrl = cpqhp_ctrl_list; ctrl; ctrl = ctrl->next)
				FUNC2(ctrl);
	}
	FUNC1("event_thread signals exit\n");
	return 0;
}