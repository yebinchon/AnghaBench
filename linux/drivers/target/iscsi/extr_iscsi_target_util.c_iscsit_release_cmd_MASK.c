#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct se_cmd {int dummy; } ;
struct iscsi_session {int /*<<< orphan*/  se_sess; } ;
struct iscsi_cmd {int /*<<< orphan*/  text_in_ptr; int /*<<< orphan*/  iov_data; int /*<<< orphan*/  overflow_buf; int /*<<< orphan*/  tmr_req; int /*<<< orphan*/  seq_list; int /*<<< orphan*/  pdu_list; int /*<<< orphan*/  buf_ptr; struct iscsi_session* sess; TYPE_1__* conn; int /*<<< orphan*/  i_conn_node; struct se_cmd se_cmd; } ;
struct TYPE_2__ {struct iscsi_session* sess; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct se_cmd*) ; 

void FUNC5(struct iscsi_cmd *cmd)
{
	struct iscsi_session *sess;
	struct se_cmd *se_cmd = &cmd->se_cmd;

	FUNC1(!FUNC3(&cmd->i_conn_node));

	if (cmd->conn)
		sess = cmd->conn->sess;
	else
		sess = cmd->sess;

	FUNC0(!sess || !sess->se_sess);

	FUNC2(cmd->buf_ptr);
	FUNC2(cmd->pdu_list);
	FUNC2(cmd->seq_list);
	FUNC2(cmd->tmr_req);
	FUNC2(cmd->overflow_buf);
	FUNC2(cmd->iov_data);
	FUNC2(cmd->text_in_ptr);

	FUNC4(sess->se_sess, se_cmd);
}