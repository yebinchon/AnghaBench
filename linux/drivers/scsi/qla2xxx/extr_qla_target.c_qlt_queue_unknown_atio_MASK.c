#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct qla_tgt_sess_op {int /*<<< orphan*/  cmd_list; int /*<<< orphan*/  atio; TYPE_3__* vha; } ;
struct qla_tgt {scalar_t__ tgt_stop; } ;
struct atio_from_isp {int dummy; } ;
struct TYPE_6__ {struct qla_tgt* qla_tgt; } ;
struct TYPE_8__ {TYPE_2__* hw; int /*<<< orphan*/  unknown_atio_work; int /*<<< orphan*/  cmd_list_lock; int /*<<< orphan*/  unknown_atio_list; int /*<<< orphan*/  vp_idx; TYPE_1__ vha_tgt; } ;
typedef  TYPE_3__ scsi_qla_host_t ;
struct TYPE_7__ {int /*<<< orphan*/  base_qpair; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct qla_tgt_sess_op* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct atio_from_isp*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ql_dbg_async ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct atio_from_isp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC9(scsi_qla_host_t *vha,
	struct atio_from_isp *atio, uint8_t ha_locked)
{
	struct qla_tgt_sess_op *u;
	struct qla_tgt *tgt = vha->vha_tgt.qla_tgt;
	unsigned long flags;

	if (tgt->tgt_stop) {
		FUNC4(ql_dbg_async, vha, 0x502c,
		    "qla_target(%d): dropping unknown ATIO_TYPE7, because tgt is being stopped",
		    vha->vp_idx);
		goto out_term;
	}

	u = FUNC1(sizeof(*u), GFP_ATOMIC);
	if (u == NULL)
		goto out_term;

	u->vha = vha;
	FUNC3(&u->atio, atio, sizeof(*atio));
	FUNC0(&u->cmd_list);

	FUNC7(&vha->cmd_list_lock, flags);
	FUNC2(&u->cmd_list, &vha->unknown_atio_list);
	FUNC8(&vha->cmd_list_lock, flags);

	FUNC6(&vha->unknown_atio_work, 1);

out:
	return;

out_term:
	FUNC5(vha->hw->base_qpair, NULL, atio, ha_locked, 0);
	goto out;
}