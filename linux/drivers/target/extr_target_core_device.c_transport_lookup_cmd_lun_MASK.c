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
typedef  scalar_t__ u64 ;
struct se_session {TYPE_2__* se_tpg; struct se_node_acl* se_node_acl; } ;
struct se_node_acl {int dummy; } ;
struct se_lun {int /*<<< orphan*/  lun_se_dev; int /*<<< orphan*/  lun_ref; } ;
struct se_dev_entry {scalar_t__ lun_access_ro; int /*<<< orphan*/  pr_res_key; int /*<<< orphan*/  se_lun; int /*<<< orphan*/  read_bytes; int /*<<< orphan*/  write_bytes; int /*<<< orphan*/  total_cmds; } ;
struct se_cmd {scalar_t__ data_direction; int lun_ref_active; TYPE_3__* se_dev; int /*<<< orphan*/  data_length; int /*<<< orphan*/  se_cmd_flags; scalar_t__ orig_fe_lun; struct se_lun* se_lun; TYPE_1__* se_tfo; int /*<<< orphan*/  pr_res_key; struct se_session* se_sess; } ;
typedef  int /*<<< orphan*/  sense_reason_t ;
struct TYPE_6__ {int /*<<< orphan*/  read_bytes; int /*<<< orphan*/  write_bytes; int /*<<< orphan*/  num_cmds; } ;
struct TYPE_5__ {struct se_lun* tpg_virt_lun0; } ;
struct TYPE_4__ {int /*<<< orphan*/  fabric_name; } ;

/* Variables and functions */
 scalar_t__ DMA_FROM_DEVICE ; 
 scalar_t__ DMA_NONE ; 
 scalar_t__ DMA_TO_DEVICE ; 
 int /*<<< orphan*/  SCF_SE_LUN_CMD ; 
 int /*<<< orphan*/  TCM_NON_EXISTENT_LUN ; 
 int /*<<< orphan*/  TCM_NO_SENSE ; 
 int /*<<< orphan*/  TCM_WRITE_PROTECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct se_lun* FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct se_dev_entry* FUNC9 (struct se_node_acl*,scalar_t__) ; 

sense_reason_t
FUNC10(struct se_cmd *se_cmd, u64 unpacked_lun)
{
	struct se_lun *se_lun = NULL;
	struct se_session *se_sess = se_cmd->se_sess;
	struct se_node_acl *nacl = se_sess->se_node_acl;
	struct se_dev_entry *deve;
	sense_reason_t ret = TCM_NO_SENSE;

	FUNC7();
	deve = FUNC9(nacl, unpacked_lun);
	if (deve) {
		FUNC1(&deve->total_cmds);

		if (se_cmd->data_direction == DMA_TO_DEVICE)
			FUNC0(se_cmd->data_length,
					&deve->write_bytes);
		else if (se_cmd->data_direction == DMA_FROM_DEVICE)
			FUNC0(se_cmd->data_length,
					&deve->read_bytes);

		se_lun = FUNC5(deve->se_lun);

		if (!FUNC3(&se_lun->lun_ref)) {
			se_lun = NULL;
			goto out_unlock;
		}

		se_cmd->se_lun = se_lun;
		se_cmd->pr_res_key = deve->pr_res_key;
		se_cmd->orig_fe_lun = unpacked_lun;
		se_cmd->se_cmd_flags |= SCF_SE_LUN_CMD;
		se_cmd->lun_ref_active = true;

		if ((se_cmd->data_direction == DMA_TO_DEVICE) &&
		    deve->lun_access_ro) {
			FUNC4("TARGET_CORE[%s]: Detected WRITE_PROTECTED LUN"
				" Access for 0x%08llx\n",
				se_cmd->se_tfo->fabric_name,
				unpacked_lun);
			FUNC8();
			ret = TCM_WRITE_PROTECTED;
			goto ref_dev;
		}
	}
out_unlock:
	FUNC8();

	if (!se_lun) {
		/*
		 * Use the se_portal_group->tpg_virt_lun0 to allow for
		 * REPORT_LUNS, et al to be returned when no active
		 * MappedLUN=0 exists for this Initiator Port.
		 */
		if (unpacked_lun != 0) {
			FUNC4("TARGET_CORE[%s]: Detected NON_EXISTENT_LUN"
				" Access for 0x%08llx\n",
				se_cmd->se_tfo->fabric_name,
				unpacked_lun);
			return TCM_NON_EXISTENT_LUN;
		}

		se_lun = se_sess->se_tpg->tpg_virt_lun0;
		se_cmd->se_lun = se_sess->se_tpg->tpg_virt_lun0;
		se_cmd->orig_fe_lun = 0;
		se_cmd->se_cmd_flags |= SCF_SE_LUN_CMD;

		FUNC2(&se_lun->lun_ref);
		se_cmd->lun_ref_active = true;

		/*
		 * Force WRITE PROTECT for virtual LUN 0
		 */
		if ((se_cmd->data_direction != DMA_FROM_DEVICE) &&
		    (se_cmd->data_direction != DMA_NONE)) {
			ret = TCM_WRITE_PROTECTED;
			goto ref_dev;
		}
	}
	/*
	 * RCU reference protected by percpu se_lun->lun_ref taken above that
	 * must drop to zero (including initial reference) before this se_lun
	 * pointer can be kfree_rcu() by the final se_lun->lun_group put via
	 * target_core_fabric_configfs.c:target_fabric_port_release
	 */
ref_dev:
	se_cmd->se_dev = FUNC6(se_lun->lun_se_dev);
	FUNC1(&se_cmd->se_dev->num_cmds);

	if (se_cmd->data_direction == DMA_TO_DEVICE)
		FUNC0(se_cmd->data_length,
				&se_cmd->se_dev->write_bytes);
	else if (se_cmd->data_direction == DMA_FROM_DEVICE)
		FUNC0(se_cmd->data_length,
				&se_cmd->se_dev->read_bytes);

	return ret;
}