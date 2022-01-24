#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct se_session {scalar_t__ sess_cmd_map; int /*<<< orphan*/  sess_tag_pool; } ;
struct iscsi_conn {TYPE_2__* conn_transport; TYPE_1__* sess; } ;
struct TYPE_6__ {int map_tag; int map_cpu; } ;
struct iscsi_cmd {int /*<<< orphan*/  dataout_timer; int /*<<< orphan*/  r2t_lock; int /*<<< orphan*/  error_lock; int /*<<< orphan*/  istate_lock; int /*<<< orphan*/  dataout_timeout_lock; int /*<<< orphan*/  datain_lock; int /*<<< orphan*/  cmd_r2t_list; int /*<<< orphan*/  datain_list; int /*<<< orphan*/  i_conn_node; int /*<<< orphan*/  data_direction; struct iscsi_conn* conn; TYPE_3__ se_cmd; } ;
struct TYPE_5__ {int priv_size; } ;
struct TYPE_4__ {struct se_session* se_sess; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iscsit_handle_dataout_timeout ; 
 int FUNC1 (struct se_session*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct iscsi_cmd *FUNC6(struct iscsi_conn *conn, int state)
{
	struct iscsi_cmd *cmd;
	struct se_session *se_sess = conn->sess->se_sess;
	int size, tag, cpu;

	tag = FUNC3(&se_sess->sess_tag_pool, &cpu);
	if (tag < 0)
		tag = FUNC1(se_sess, state, &cpu);
	if (tag < 0)
		return NULL;

	size = sizeof(struct iscsi_cmd) + conn->conn_transport->priv_size;
	cmd = (struct iscsi_cmd *)(se_sess->sess_cmd_map + (tag * size));
	FUNC2(cmd, 0, size);

	cmd->se_cmd.map_tag = tag;
	cmd->se_cmd.map_cpu = cpu;
	cmd->conn = conn;
	cmd->data_direction = DMA_NONE;
	FUNC0(&cmd->i_conn_node);
	FUNC0(&cmd->datain_list);
	FUNC0(&cmd->cmd_r2t_list);
	FUNC4(&cmd->datain_lock);
	FUNC4(&cmd->dataout_timeout_lock);
	FUNC4(&cmd->istate_lock);
	FUNC4(&cmd->error_lock);
	FUNC4(&cmd->r2t_lock);
	FUNC5(&cmd->dataout_timer, iscsit_handle_dataout_timeout, 0);

	return cmd;
}