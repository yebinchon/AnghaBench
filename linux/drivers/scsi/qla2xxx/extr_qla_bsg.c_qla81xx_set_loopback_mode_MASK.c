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
typedef  scalar_t__ uint16_t ;
struct TYPE_11__ {scalar_t__ idc_compl_status; } ;
struct qla_hw_data {int notify_dcbx_comp; unsigned long idc_extend_tmo; TYPE_2__ flags; TYPE_1__* isp_ops; int /*<<< orphan*/  dcbx_comp; } ;
struct TYPE_12__ {int /*<<< orphan*/  dpc_flags; struct qla_hw_data* hw; } ;
typedef  TYPE_3__ scsi_qla_host_t ;
struct TYPE_10__ {int /*<<< orphan*/  (* fw_dump ) (TYPE_3__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 unsigned long DCBX_COMP_TIMEOUT ; 
 int EINVAL ; 
 int ENABLE_EXTERNAL_LOOPBACK ; 
 int ENABLE_INTERNAL_LOOPBACK ; 
 scalar_t__ EXTERNAL_LOOPBACK ; 
 unsigned long HZ ; 
 scalar_t__ INTERNAL_LOOPBACK ; 
 scalar_t__ INTERNAL_LOOPBACK_MASK ; 
 int /*<<< orphan*/  ISP_ABORT_NEEDED ; 
 int /*<<< orphan*/  FUNC0 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct qla_hw_data*) ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,int,char*,...) ; 
 int /*<<< orphan*/  ql_dbg_user ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*,int,char*) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int FUNC6 (TYPE_3__*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline int
FUNC11(scsi_qla_host_t *vha, uint16_t *config,
	uint16_t *new_config, uint16_t mode)
{
	int ret = 0;
	int rval = 0;
	unsigned long rem_tmo = 0, current_tmo = 0;
	struct qla_hw_data *ha = vha->hw;

	if (!FUNC2(ha) && !FUNC0(ha) && !FUNC1(ha))
		goto done_set_internal;

	if (mode == INTERNAL_LOOPBACK)
		new_config[0] = config[0] | (ENABLE_INTERNAL_LOOPBACK << 1);
	else if (mode == EXTERNAL_LOOPBACK)
		new_config[0] = config[0] | (ENABLE_EXTERNAL_LOOPBACK << 1);
	FUNC4(ql_dbg_user, vha, 0x70be,
	     "new_config[0]=%02x\n", (new_config[0] & INTERNAL_LOOPBACK_MASK));

	FUNC3(&new_config[1], &config[1], sizeof(uint16_t) * 3);

	ha->notify_dcbx_comp = 1;
	ret = FUNC7(vha, new_config);
	if (ret != QLA_SUCCESS) {
		FUNC5(ql_log_warn, vha, 0x7021,
		    "set port config failed.\n");
		ha->notify_dcbx_comp = 0;
		rval = -EINVAL;
		goto done_set_internal;
	}

	/* Wait for DCBX complete event */
	current_tmo = DCBX_COMP_TIMEOUT * HZ;
	while (1) {
		rem_tmo = FUNC10(&ha->dcbx_comp,
		    current_tmo);
		if (!ha->idc_extend_tmo || rem_tmo) {
			ha->idc_extend_tmo = 0;
			break;
		}
		current_tmo = ha->idc_extend_tmo * HZ;
		ha->idc_extend_tmo = 0;
	}

	if (!rem_tmo) {
		FUNC4(ql_dbg_user, vha, 0x7022,
		    "DCBX completion not received.\n");
		ret = FUNC6(vha, new_config, 0, 0);
		/*
		 * If the reset of the loopback mode doesn't work take a FCoE
		 * dump and reset the chip.
		 */
		if (ret) {
			ha->isp_ops->fw_dump(vha, 0);
			FUNC8(ISP_ABORT_NEEDED, &vha->dpc_flags);
		}
		rval = -EINVAL;
	} else {
		if (ha->flags.idc_compl_status) {
			FUNC4(ql_dbg_user, vha, 0x70c3,
			    "Bad status in IDC Completion AEN\n");
			rval = -EINVAL;
			ha->flags.idc_compl_status = 0;
		} else
			FUNC4(ql_dbg_user, vha, 0x7023,
			    "DCBX completion received.\n");
	}

	ha->notify_dcbx_comp = 0;
	ha->idc_extend_tmo = 0;

done_set_internal:
	return rval;
}