#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct se_session {scalar_t__ sess_cmd_map; int /*<<< orphan*/  sess_tag_pool; } ;
struct scsi_lun {int dummy; } ;
struct TYPE_13__ {int map_tag; int map_cpu; } ;
struct qla_tgt_cmd {int /*<<< orphan*/  vp_idx; int /*<<< orphan*/  reset_count; int /*<<< orphan*/  unpacked_lun; int /*<<< orphan*/  jiffies_at_alloc; scalar_t__ trc_flags; int /*<<< orphan*/  conf_compl_supported; int /*<<< orphan*/  loop_id; struct fc_port* sess; TYPE_2__ se_cmd; TYPE_8__* vha; int /*<<< orphan*/  tgt; int /*<<< orphan*/  state; int /*<<< orphan*/  atio; int /*<<< orphan*/  cmd_type; } ;
struct fc_port {int /*<<< orphan*/  conf_compl_supported; int /*<<< orphan*/  loop_id; struct se_session* se_sess; } ;
struct TYPE_14__ {int /*<<< orphan*/  lun; } ;
struct TYPE_15__ {TYPE_3__ fcp_cmnd; } ;
struct TYPE_16__ {TYPE_4__ isp24; } ;
struct atio_from_isp {TYPE_5__ u; } ;
struct TYPE_12__ {int /*<<< orphan*/  qla_tgt; } ;
struct TYPE_19__ {int /*<<< orphan*/  vp_idx; TYPE_7__* hw; TYPE_1__ vha_tgt; } ;
typedef  TYPE_8__ scsi_qla_host_t ;
struct TYPE_18__ {TYPE_6__* base_qpair; } ;
struct TYPE_17__ {int /*<<< orphan*/  chip_reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLA_TGT_STATE_NEW ; 
 int /*<<< orphan*/  TYPE_TGT_CMD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct atio_from_isp*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qla_tgt_cmd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,struct qla_tgt_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_lun*) ; 

__attribute__((used)) static struct qla_tgt_cmd *FUNC7(scsi_qla_host_t *vha,
				       struct fc_port *sess,
				       struct atio_from_isp *atio)
{
	struct se_session *se_sess = sess->se_sess;
	struct qla_tgt_cmd *cmd;
	int tag, cpu;

	tag = FUNC5(&se_sess->sess_tag_pool, &cpu);
	if (tag < 0)
		return NULL;

	cmd = &((struct qla_tgt_cmd *)se_sess->sess_cmd_map)[tag];
	FUNC2(cmd, 0, sizeof(struct qla_tgt_cmd));
	cmd->cmd_type = TYPE_TGT_CMD;
	FUNC1(&cmd->atio, atio, sizeof(*atio));
	cmd->state = QLA_TGT_STATE_NEW;
	cmd->tgt = vha->vha_tgt.qla_tgt;
	FUNC4(vha);
	cmd->vha = vha;
	cmd->se_cmd.map_tag = tag;
	cmd->se_cmd.map_cpu = cpu;
	cmd->sess = sess;
	cmd->loop_id = sess->loop_id;
	cmd->conf_compl_supported = sess->conf_compl_supported;

	cmd->trc_flags = 0;
	cmd->jiffies_at_alloc = FUNC0();

	cmd->unpacked_lun = FUNC6(
	    (struct scsi_lun *)&atio->u.isp24.fcp_cmnd.lun);
	FUNC3(vha, cmd);
	cmd->reset_count = vha->hw->base_qpair->chip_reset;
	cmd->vp_idx = vha->vp_idx;

	return cmd;
}