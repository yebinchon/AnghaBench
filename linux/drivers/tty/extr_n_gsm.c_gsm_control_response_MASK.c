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
typedef  int /*<<< orphan*/  u8 ;
struct gsm_mux {int /*<<< orphan*/  control_lock; int /*<<< orphan*/  event; struct gsm_control* pending_cmd; int /*<<< orphan*/  t2_timer; } ;
struct gsm_control {unsigned int cmd; int done; int /*<<< orphan*/  error; } ;

/* Variables and functions */
 unsigned int CMD_NSC ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct gsm_mux *gsm, unsigned int command,
						const u8 *data, int clen)
{
	struct gsm_control *ctrl;
	unsigned long flags;

	FUNC1(&gsm->control_lock, flags);

	ctrl = gsm->pending_cmd;
	/* Does the reply match our command */
	command |= 1;
	if (ctrl != NULL && (command == ctrl->cmd || command == CMD_NSC)) {
		/* Our command was replied to, kill the retry timer */
		FUNC0(&gsm->t2_timer);
		gsm->pending_cmd = NULL;
		/* Rejected by the other end */
		if (command == CMD_NSC)
			ctrl->error = -EOPNOTSUPP;
		ctrl->done = 1;
		FUNC3(&gsm->event);
	}
	FUNC2(&gsm->control_lock, flags);
}