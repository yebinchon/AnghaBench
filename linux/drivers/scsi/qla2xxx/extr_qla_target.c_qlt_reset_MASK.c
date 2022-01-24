#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_9__ {TYPE_6__* qla_tgt; } ;
struct scsi_qla_host {int /*<<< orphan*/  host_no; TYPE_3__ vha_tgt; struct qla_hw_data* hw; } ;
struct TYPE_11__ {int /*<<< orphan*/  sess_lock; TYPE_4__* tgt_ops; } ;
struct qla_hw_data {TYPE_5__ tgt; } ;
struct TYPE_7__ {int /*<<< orphan*/  nport_handle; } ;
struct TYPE_8__ {TYPE_1__ isp24; } ;
struct imm_ntfy_from_isp {TYPE_2__ u; } ;
struct fc_port {int /*<<< orphan*/  port_name; } ;
struct TYPE_12__ {int /*<<< orphan*/  tgt_global_resets_count; } ;
struct TYPE_10__ {struct fc_port* (* find_sess_by_loop_id ) (struct scsi_qla_host*,int) ;} ;

/* Variables and functions */
 int ESRCH ; 
 int /*<<< orphan*/  QLA24XX_MGMT_SEND_NACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_qla_host*,int,char*,struct fc_port*,...) ; 
 int /*<<< orphan*/  ql_dbg_tgt ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int FUNC4 (struct fc_port*,int /*<<< orphan*/ ,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct fc_port* FUNC7 (struct scsi_qla_host*,int) ; 

__attribute__((used)) static int FUNC8(struct scsi_qla_host *vha, void *iocb, int mcmd)
{
	struct qla_hw_data *ha = vha->hw;
	struct fc_port *sess = NULL;
	uint16_t loop_id;
	int res = 0;
	struct imm_ntfy_from_isp *n = (struct imm_ntfy_from_isp *)iocb;
	unsigned long flags;

	loop_id = FUNC1(n->u.isp24.nport_handle);
	if (loop_id == 0xFFFF) {
		/* Global event */
		FUNC0(&vha->vha_tgt.qla_tgt->tgt_global_resets_count);
		FUNC5(&ha->tgt.sess_lock, flags);
		FUNC3(vha->vha_tgt.qla_tgt);
		FUNC6(&ha->tgt.sess_lock, flags);
	} else {
		FUNC5(&ha->tgt.sess_lock, flags);
		sess = ha->tgt.tgt_ops->find_sess_by_loop_id(vha, loop_id);
		FUNC6(&ha->tgt.sess_lock, flags);
	}

	FUNC2(ql_dbg_tgt, vha, 0xe000,
	    "Using sess for qla_tgt_reset: %p\n", sess);
	if (!sess) {
		res = -ESRCH;
		return res;
	}

	FUNC2(ql_dbg_tgt, vha, 0xe047,
	    "scsi(%ld): resetting (session %p from port %8phC mcmd %x, "
	    "loop_id %d)\n", vha->host_no, sess, sess->port_name,
	    mcmd, loop_id);

	return FUNC4(sess, 0, mcmd, iocb, QLA24XX_MGMT_SEND_NACK);
}