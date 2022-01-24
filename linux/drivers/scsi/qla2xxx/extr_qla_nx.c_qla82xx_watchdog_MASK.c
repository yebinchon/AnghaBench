#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_11__ {int isp82xx_fw_hung; int /*<<< orphan*/  nic_core_reset_hdlr_active; } ;
struct qla_hw_data {TYPE_2__ flags; } ;
struct TYPE_10__ {int online; } ;
struct TYPE_12__ {int /*<<< orphan*/  dpc_flags; TYPE_1__ flags; struct qla_hw_data* hw; } ;
typedef  TYPE_3__ scsi_qla_host_t ;

/* Variables and functions */
 int CRB_NIU_XG_PAUSE_CTL_P0 ; 
 int CRB_NIU_XG_PAUSE_CTL_P1 ; 
 scalar_t__ HALT_STATUS_UNRECOVERABLE ; 
 int /*<<< orphan*/  ISP_ABORT_NEEDED ; 
 int /*<<< orphan*/  ISP_QUIESCE_NEEDED ; 
 int /*<<< orphan*/  ISP_UNRECOVERABLE ; 
 scalar_t__ QLA82XX_CRB_DEV_STATE ; 
 scalar_t__ QLA82XX_CRB_NIU ; 
 scalar_t__ QLA82XX_CRB_PEG_NET_0 ; 
 scalar_t__ QLA82XX_CRB_PEG_NET_1 ; 
 scalar_t__ QLA82XX_CRB_PEG_NET_2 ; 
 scalar_t__ QLA82XX_CRB_PEG_NET_3 ; 
 scalar_t__ QLA82XX_CRB_PEG_NET_4 ; 
 scalar_t__ QLA82XX_PEG_HALT_STATUS1 ; 
 scalar_t__ QLA82XX_PEG_HALT_STATUS2 ; 
 scalar_t__ QLA8XXX_DEV_FAILED ; 
 scalar_t__ QLA8XXX_DEV_NEED_QUIESCENT ; 
 scalar_t__ QLA8XXX_DEV_NEED_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*,int,char*) ; 
 int /*<<< orphan*/  ql_dbg_timer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*,int,char*,...) ; 
 int /*<<< orphan*/  ql_log_info ; 
 int /*<<< orphan*/  ql_log_warn ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (struct qla_hw_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct qla_hw_data*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC9(scsi_qla_host_t *vha)
{
	uint32_t dev_state, halt_status;
	struct qla_hw_data *ha = vha->hw;

	/* don't poll if reset is going on */
	if (!ha->flags.nic_core_reset_hdlr_active) {
		dev_state = FUNC5(ha, QLA82XX_CRB_DEV_STATE);
		if (FUNC3(vha)) {
			FUNC7(ISP_UNRECOVERABLE, &vha->dpc_flags);
			ha->flags.isp82xx_fw_hung = 1;
			FUNC4(vha);
		} else if (dev_state == QLA8XXX_DEV_NEED_RESET &&
		    !FUNC8(ISP_ABORT_NEEDED, &vha->dpc_flags)) {
			FUNC1(ql_log_warn, vha, 0x6001,
			    "Adapter reset needed.\n");
			FUNC7(ISP_ABORT_NEEDED, &vha->dpc_flags);
		} else if (dev_state == QLA8XXX_DEV_NEED_QUIESCENT &&
			!FUNC8(ISP_QUIESCE_NEEDED, &vha->dpc_flags)) {
			FUNC1(ql_log_warn, vha, 0x6002,
			    "Quiescent needed.\n");
			FUNC7(ISP_QUIESCE_NEEDED, &vha->dpc_flags);
		} else if (dev_state == QLA8XXX_DEV_FAILED &&
			!FUNC8(ISP_UNRECOVERABLE, &vha->dpc_flags) &&
			vha->flags.online == 1) {
			FUNC1(ql_log_warn, vha, 0xb055,
			    "Adapter state is failed. Offlining.\n");
			FUNC7(ISP_UNRECOVERABLE, &vha->dpc_flags);
			ha->flags.isp82xx_fw_hung = 1;
			FUNC4(vha);
		} else {
			if (FUNC2(vha)) {
				FUNC0(ql_dbg_timer, vha, 0x6011,
				    "disabling pause transmit on port 0 & 1.\n");
				FUNC6(ha, QLA82XX_CRB_NIU + 0x98,
				    CRB_NIU_XG_PAUSE_CTL_P0|CRB_NIU_XG_PAUSE_CTL_P1);
				halt_status = FUNC5(ha,
				    QLA82XX_PEG_HALT_STATUS1);
				FUNC1(ql_log_info, vha, 0x6005,
				    "dumping hw/fw registers:.\n "
				    " PEG_HALT_STATUS1: 0x%x, PEG_HALT_STATUS2: 0x%x,.\n "
				    " PEG_NET_0_PC: 0x%x, PEG_NET_1_PC: 0x%x,.\n "
				    " PEG_NET_2_PC: 0x%x, PEG_NET_3_PC: 0x%x,.\n "
				    " PEG_NET_4_PC: 0x%x.\n", halt_status,
				    FUNC5(ha, QLA82XX_PEG_HALT_STATUS2),
				    FUNC5(ha,
					    QLA82XX_CRB_PEG_NET_0 + 0x3c),
				    FUNC5(ha,
					    QLA82XX_CRB_PEG_NET_1 + 0x3c),
				    FUNC5(ha,
					    QLA82XX_CRB_PEG_NET_2 + 0x3c),
				    FUNC5(ha,
					    QLA82XX_CRB_PEG_NET_3 + 0x3c),
				    FUNC5(ha,
					    QLA82XX_CRB_PEG_NET_4 + 0x3c));
				if (((halt_status & 0x1fffff00) >> 8) == 0x67)
					FUNC1(ql_log_warn, vha, 0xb052,
					    "Firmware aborted with "
					    "error code 0x00006700. Device is "
					    "being reset.\n");
				if (halt_status & HALT_STATUS_UNRECOVERABLE) {
					FUNC7(ISP_UNRECOVERABLE,
					    &vha->dpc_flags);
				} else {
					FUNC1(ql_log_info, vha, 0x6006,
					    "Detect abort  needed.\n");
					FUNC7(ISP_ABORT_NEEDED,
					    &vha->dpc_flags);
				}
				ha->flags.isp82xx_fw_hung = 1;
				FUNC1(ql_log_warn, vha, 0x6007, "Firmware hung.\n");
				FUNC4(vha);
			}
		}
	}
}