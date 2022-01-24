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
typedef  int /*<<< orphan*/  u32 ;
struct target_core_fabric_ops {int dummy; } ;
struct se_session {int dummy; } ;
struct se_cmd {int data_direction; int sam_task_attr; unsigned char* sense_buffer; int state_active; int /*<<< orphan*/  data_length; struct se_session* se_sess; struct target_core_fabric_ops const* se_tfo; int /*<<< orphan*/  cmd_kref; int /*<<< orphan*/  work; int /*<<< orphan*/  t_state_lock; int /*<<< orphan*/ * abrt_compl; int /*<<< orphan*/ * free_compl; int /*<<< orphan*/  t_transport_stop_comp; int /*<<< orphan*/  state_list; int /*<<< orphan*/  se_cmd_list; int /*<<< orphan*/  se_qf_node; int /*<<< orphan*/  se_delayed_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(
	struct se_cmd *cmd,
	const struct target_core_fabric_ops *tfo,
	struct se_session *se_sess,
	u32 data_length,
	int data_direction,
	int task_attr,
	unsigned char *sense_buffer)
{
	FUNC0(&cmd->se_delayed_node);
	FUNC0(&cmd->se_qf_node);
	FUNC0(&cmd->se_cmd_list);
	FUNC0(&cmd->state_list);
	FUNC2(&cmd->t_transport_stop_comp);
	cmd->free_compl = NULL;
	cmd->abrt_compl = NULL;
	FUNC4(&cmd->t_state_lock);
	FUNC1(&cmd->work, NULL);
	FUNC3(&cmd->cmd_kref);

	cmd->se_tfo = tfo;
	cmd->se_sess = se_sess;
	cmd->data_length = data_length;
	cmd->data_direction = data_direction;
	cmd->sam_task_attr = task_attr;
	cmd->sense_buffer = sense_buffer;

	cmd->state_active = false;
}