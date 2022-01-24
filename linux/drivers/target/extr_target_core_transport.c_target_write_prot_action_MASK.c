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
typedef  int u32 ;
struct se_cmd {int prot_op; int data_length; int /*<<< orphan*/  pi_err; int /*<<< orphan*/  t_state_lock; int /*<<< orphan*/  transport_state; int /*<<< orphan*/  t_prot_sg; int /*<<< orphan*/  t_task_lba; TYPE_3__* se_dev; TYPE_1__* se_sess; } ;
struct TYPE_5__ {int /*<<< orphan*/  block_size; } ;
struct TYPE_6__ {TYPE_2__ dev_attrib; } ;
struct TYPE_4__ {int const sup_prot_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_T_SENT ; 
#define  TARGET_PROT_DOUT_INSERT 129 
#define  TARGET_PROT_DOUT_STRIP 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (struct se_cmd*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct se_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct se_cmd *cmd)
{
	u32 sectors;
	/*
	 * Perform WRITE_INSERT of PI using software emulation when backend
	 * device has PI enabled, if the transport has not already generated
	 * PI using hardware WRITE_INSERT offload.
	 */
	switch (cmd->prot_op) {
	case TARGET_PROT_DOUT_INSERT:
		if (!(cmd->se_sess->sup_prot_ops & TARGET_PROT_DOUT_INSERT))
			FUNC1(cmd);
		break;
	case TARGET_PROT_DOUT_STRIP:
		if (cmd->se_sess->sup_prot_ops & TARGET_PROT_DOUT_STRIP)
			break;

		sectors = cmd->data_length >> FUNC0(cmd->se_dev->dev_attrib.block_size);
		cmd->pi_err = FUNC2(cmd, cmd->t_task_lba,
					     sectors, 0, cmd->t_prot_sg, 0);
		if (FUNC6(cmd->pi_err)) {
			FUNC3(&cmd->t_state_lock);
			cmd->transport_state &= ~CMD_T_SENT;
			FUNC4(&cmd->t_state_lock);
			FUNC5(cmd, cmd->pi_err);
			return -1;
		}
		break;
	default:
		break;
	}

	return 0;
}