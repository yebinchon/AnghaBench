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
struct iscsi_session {int dummy; } ;
struct iscsi_node_attrib {int dataout_timeout; } ;
struct iscsi_conn {int /*<<< orphan*/  cid; struct iscsi_session* sess; } ;
struct iscsi_cmd {int dataout_timer_flags; int /*<<< orphan*/  dataout_timer; int /*<<< orphan*/  init_task_tag; int /*<<< orphan*/  dataout_timeout_lock; } ;

/* Variables and functions */
 int HZ ; 
 int ISCSI_TF_RUNNING ; 
 int ISCSI_TF_STOP ; 
 struct iscsi_node_attrib* FUNC0 (struct iscsi_session*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(
	struct iscsi_cmd *cmd,
	struct iscsi_conn *conn)
{
	struct iscsi_session *sess = conn->sess;
	struct iscsi_node_attrib *na = FUNC0(sess);

	FUNC1(&cmd->dataout_timeout_lock);

	if (cmd->dataout_timer_flags & ISCSI_TF_RUNNING)
		return;

	FUNC3("Starting DataOUT timer for ITT: 0x%08x on"
		" CID: %hu.\n", cmd->init_task_tag, conn->cid);

	cmd->dataout_timer_flags &= ~ISCSI_TF_STOP;
	cmd->dataout_timer_flags |= ISCSI_TF_RUNNING;
	FUNC2(&cmd->dataout_timer, jiffies + na->dataout_timeout * HZ);
}