#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct qla_hw_data {scalar_t__ max_npiv_vports; int /*<<< orphan*/  vport_lock; int /*<<< orphan*/  hardware_lock; int /*<<< orphan*/  vport_slock; int /*<<< orphan*/  vp_list; int /*<<< orphan*/  num_vhosts; int /*<<< orphan*/  vp_idx_map; } ;
struct TYPE_5__ {int /*<<< orphan*/  list; scalar_t__ vp_idx; struct qla_hw_data* hw; } ;
typedef  TYPE_1__ scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  SET_VP_IDX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  ql_dbg_vport ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static uint32_t
FUNC9(scsi_qla_host_t *vha)
{
	uint32_t vp_id;
	struct qla_hw_data *ha = vha->hw;
	unsigned long flags;

	/* Find an empty slot and assign an vp_id */
	FUNC2(&ha->vport_lock);
	vp_id = FUNC0(ha->vp_idx_map, ha->max_npiv_vports + 1);
	if (vp_id > ha->max_npiv_vports) {
		FUNC4(ql_dbg_vport, vha, 0xa000,
		    "vp_id %d is bigger than max-supported %d.\n",
		    vp_id, ha->max_npiv_vports);
		FUNC3(&ha->vport_lock);
		return vp_id;
	}

	FUNC6(vp_id, ha->vp_idx_map);
	ha->num_vhosts++;
	vha->vp_idx = vp_id;

	FUNC7(&ha->vport_slock, flags);
	FUNC1(&vha->list, &ha->vp_list);
	FUNC8(&ha->vport_slock, flags);

	FUNC7(&ha->hardware_lock, flags);
	FUNC5(vha, SET_VP_IDX);
	FUNC8(&ha->hardware_lock, flags);

	FUNC3(&ha->vport_lock);
	return vp_id;
}