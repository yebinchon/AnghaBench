#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct qla_hw_data {int /*<<< orphan*/  vport_slock; int /*<<< orphan*/  loop_id_map; } ;
struct TYPE_3__ {int vp_idx; struct qla_hw_data* hw; } ;
typedef  TYPE_1__ scsi_qla_host_t ;

/* Variables and functions */
 int FC_NO_LOOP_ID ; 
 int NPH_MGMT_SERVER ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

int
FUNC4(scsi_qla_host_t *vha)
{
	int loop_id = FC_NO_LOOP_ID;
	int lid = NPH_MGMT_SERVER - vha->vp_idx;
	unsigned long flags;
	struct qla_hw_data *ha = vha->hw;

	if (vha->vp_idx == 0) {
		FUNC0(NPH_MGMT_SERVER, ha->loop_id_map);
		return NPH_MGMT_SERVER;
	}

	/* pick id from high and work down to low */
	FUNC1(&ha->vport_slock, flags);
	for (; lid > 0; lid--) {
		if (!FUNC3(lid, vha->hw->loop_id_map)) {
			FUNC0(lid, vha->hw->loop_id_map);
			loop_id = lid;
			break;
		}
	}
	FUNC2(&ha->vport_slock, flags);

	return loop_id;
}