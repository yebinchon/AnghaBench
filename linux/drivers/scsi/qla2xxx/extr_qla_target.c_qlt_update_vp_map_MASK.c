#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_8__ {int /*<<< orphan*/  b24; } ;
struct scsi_qla_host {size_t vp_idx; TYPE_4__ d_id; TYPE_3__* hw; } ;
struct TYPE_6__ {int /*<<< orphan*/  host_map; TYPE_1__* tgt_vp_map; } ;
struct TYPE_7__ {TYPE_2__ tgt; } ;
struct TYPE_5__ {struct scsi_qla_host* vha; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 () ; 
#define  RESET_AL_PA 131 
#define  RESET_VP_IDX 130 
#define  SET_AL_PA 129 
#define  SET_VP_IDX 128 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct scsi_qla_host*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct scsi_qla_host*,int,char*,struct scsi_qla_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ql_dbg_tgt_mgt ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct scsi_qla_host*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ql_log_info ; 

void
FUNC7(struct scsi_qla_host *vha, int cmd)
{
	void *slot;
	u32 key;
	int rc;

	if (!FUNC0())
		return;

	key = vha->d_id.b24;

	switch (cmd) {
	case SET_VP_IDX:
		vha->hw->tgt.tgt_vp_map[vha->vp_idx].vha = vha;
		break;
	case SET_AL_PA:
		slot = FUNC2(&vha->hw->tgt.host_map, key);
		if (!slot) {
			FUNC5(ql_dbg_tgt_mgt, vha, 0xf018,
			    "Save vha in host_map %p %06x\n", vha, key);
			rc = FUNC1(&vha->hw->tgt.host_map,
				key, vha, GFP_ATOMIC);
			if (rc)
				FUNC6(ql_log_info, vha, 0xd03e,
				    "Unable to insert s_id into host_map: %06x\n",
				    key);
			return;
		}
		FUNC5(ql_dbg_tgt_mgt, vha, 0xf019,
		    "replace existing vha in host_map %p %06x\n", vha, key);
		FUNC4(&vha->hw->tgt.host_map, key, vha);
		break;
	case RESET_VP_IDX:
		vha->hw->tgt.tgt_vp_map[vha->vp_idx].vha = NULL;
		break;
	case RESET_AL_PA:
		FUNC5(ql_dbg_tgt_mgt, vha, 0xf01a,
		   "clear vha in host_map %p %06x\n", vha, key);
		slot = FUNC2(&vha->hw->tgt.host_map, key);
		if (slot)
			FUNC3(&vha->hw->tgt.host_map, key);
		vha->d_id.b24 = 0;
		break;
	}
}