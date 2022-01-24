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
struct se_session {int /*<<< orphan*/  sess_cmd_lock; int /*<<< orphan*/  cmd_count; int /*<<< orphan*/  sess_cmd_list; scalar_t__ sess_tearing_down; } ;
struct se_cmd {int /*<<< orphan*/  se_cmd_list; int /*<<< orphan*/  se_cmd_flags; int /*<<< orphan*/  cmd_kref; struct se_session* se_sess; } ;

/* Variables and functions */
 int EINVAL ; 
 int ESHUTDOWN ; 
 int /*<<< orphan*/  SCF_ACK_KREF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct se_cmd*) ; 

int FUNC6(struct se_cmd *se_cmd, bool ack_kref)
{
	struct se_session *se_sess = se_cmd->se_sess;
	unsigned long flags;
	int ret = 0;

	/*
	 * Add a second kref if the fabric caller is expecting to handle
	 * fabric acknowledgement that requires two target_put_sess_cmd()
	 * invocations before se_cmd descriptor release.
	 */
	if (ack_kref) {
		if (!FUNC0(&se_cmd->cmd_kref))
			return -EINVAL;

		se_cmd->se_cmd_flags |= SCF_ACK_KREF;
	}

	FUNC3(&se_sess->sess_cmd_lock, flags);
	if (se_sess->sess_tearing_down) {
		ret = -ESHUTDOWN;
		goto out;
	}
	FUNC1(&se_cmd->se_cmd_list, &se_sess->sess_cmd_list);
	FUNC2(&se_sess->cmd_count);
out:
	FUNC4(&se_sess->sess_cmd_lock, flags);

	if (ret && ack_kref)
		FUNC5(se_cmd);

	return ret;
}