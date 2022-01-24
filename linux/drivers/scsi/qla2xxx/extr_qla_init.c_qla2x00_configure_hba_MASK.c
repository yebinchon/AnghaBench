#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint8_t ;
typedef  int uint16_t ;
struct TYPE_16__ {scalar_t__ n2n_bigger; } ;
struct qla_hw_data {int switch_cap; int /*<<< orphan*/  hardware_lock; TYPE_2__ flags; void* current_topology; void* operating_mode; int /*<<< orphan*/  min_external_loopid; int /*<<< orphan*/  loop_down_timer; int /*<<< orphan*/  pdev; } ;
struct TYPE_17__ {int /*<<< orphan*/  init_done; } ;
struct TYPE_18__ {int loop_id; TYPE_3__ flags; int /*<<< orphan*/  dpc_flags; struct qla_hw_data* hw; } ;
typedef  TYPE_4__ scsi_qla_host_t ;
struct TYPE_15__ {scalar_t__ rsvd_1; void* al_pa; void* area; void* domain; } ;
struct TYPE_19__ {TYPE_1__ b; } ;
typedef  TYPE_5__ port_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISP_ABORT_NEEDED ; 
 void* ISP_CFG_F ; 
 void* ISP_CFG_FL ; 
 void* ISP_CFG_N ; 
 void* ISP_CFG_NL ; 
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 void* LOOP ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 void* P2P ; 
 int QLA_COMMAND_ERROR ; 
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  SNS_FIRST_LOOP_ID ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_4__*,int,char*,...) ; 
 int /*<<< orphan*/  ql_dbg_disc ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_4__*,int,char*,...) ; 
 int /*<<< orphan*/  ql_log_info ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int FUNC7 (TYPE_4__*) ; 
 int FUNC8 (TYPE_4__*,int*,void**,void**,void**,int*,int*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,TYPE_5__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 

__attribute__((used)) static int
FUNC14(scsi_qla_host_t *vha)
{
	int       rval;
	uint16_t      loop_id;
	uint16_t      topo;
	uint16_t      sw_cap;
	uint8_t       al_pa;
	uint8_t       area;
	uint8_t       domain;
	char		connect_type[22];
	struct qla_hw_data *ha = vha->hw;
	scsi_qla_host_t *base_vha = FUNC4(ha->pdev);
	port_id_t id;
	unsigned long flags;

	/* Get host addresses. */
	rval = FUNC8(vha,
	    &loop_id, &al_pa, &area, &domain, &topo, &sw_cap);
	if (rval != QLA_SUCCESS) {
		if (FUNC2(vha) || FUNC3(&ha->loop_down_timer) ||
		    FUNC0(ha) ||
		    (rval == QLA_COMMAND_ERROR && loop_id == 0x7)) {
			FUNC5(ql_dbg_disc, vha, 0x2008,
			    "Loop is in a transition state.\n");
		} else {
			FUNC6(ql_log_warn, vha, 0x2009,
			    "Unable to get host loop ID.\n");
			if (FUNC1(ha) && (vha == base_vha) &&
			    (rval == QLA_COMMAND_ERROR && loop_id == 0x1b)) {
				FUNC6(ql_log_warn, vha, 0x1151,
				    "Doing link init.\n");
				if (FUNC7(vha) == QLA_SUCCESS)
					return rval;
			}
			FUNC10(ISP_ABORT_NEEDED, &vha->dpc_flags);
		}
		return (rval);
	}

	if (topo == 4) {
		FUNC6(ql_log_info, vha, 0x200a,
		    "Cannot get topology - retrying.\n");
		return (QLA_FUNCTION_FAILED);
	}

	vha->loop_id = loop_id;

	/* initialize */
	ha->min_external_loopid = SNS_FIRST_LOOP_ID;
	ha->operating_mode = LOOP;
	ha->switch_cap = 0;

	switch (topo) {
	case 0:
		FUNC5(ql_dbg_disc, vha, 0x200b, "HBA in NL topology.\n");
		ha->current_topology = ISP_CFG_NL;
		FUNC13(connect_type, "(Loop)");
		break;

	case 1:
		FUNC5(ql_dbg_disc, vha, 0x200c, "HBA in FL topology.\n");
		ha->switch_cap = sw_cap;
		ha->current_topology = ISP_CFG_FL;
		FUNC13(connect_type, "(FL_Port)");
		break;

	case 2:
		FUNC5(ql_dbg_disc, vha, 0x200d, "HBA in N P2P topology.\n");
		ha->operating_mode = P2P;
		ha->current_topology = ISP_CFG_N;
		FUNC13(connect_type, "(N_Port-to-N_Port)");
		break;

	case 3:
		FUNC5(ql_dbg_disc, vha, 0x200e, "HBA in F P2P topology.\n");
		ha->switch_cap = sw_cap;
		ha->operating_mode = P2P;
		ha->current_topology = ISP_CFG_F;
		FUNC13(connect_type, "(F_Port)");
		break;

	default:
		FUNC5(ql_dbg_disc, vha, 0x200f,
		    "HBA in unknown topology %x, using NL.\n", topo);
		ha->current_topology = ISP_CFG_NL;
		FUNC13(connect_type, "(Loop)");
		break;
	}

	/* Save Host port and loop ID. */
	/* byte order - Big Endian */
	id.b.domain = domain;
	id.b.area = area;
	id.b.al_pa = al_pa;
	id.b.rsvd_1 = 0;
	FUNC11(&ha->hardware_lock, flags);
	if (!(topo == 2 && ha->flags.n2n_bigger))
		FUNC9(vha, id);
	FUNC12(&ha->hardware_lock, flags);

	if (!vha->flags.init_done)
		FUNC6(ql_log_info, vha, 0x2010,
		    "Topology - %s, Host Loop address 0x%x.\n",
		    connect_type, vha->loop_id);

	return(rval);
}