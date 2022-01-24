#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct qla_tgt* qla_tgt; } ;
struct scsi_qla_host {int /*<<< orphan*/  dpc_flags; TYPE_1__ vha_tgt; struct qla_hw_data* hw; } ;
struct qla_tgt {int dummy; } ;
struct qla_hw_data {int /*<<< orphan*/  hardware_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISP_ABORT_NEEDED ; 
 scalar_t__ QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct scsi_qla_host*,int,char*) ; 
 int /*<<< orphan*/  ql_dbg_tgt ; 
 scalar_t__ FUNC2 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct scsi_qla_host *vha)
{
	struct qla_hw_data *ha = vha->hw;
	struct qla_tgt *tgt = vha->vha_tgt.qla_tgt;
	unsigned long flags;

	if (!tgt) {
		FUNC1(ql_dbg_tgt, vha, 0xe06a,
		    "Unable to locate qla_tgt pointer from"
		    " struct qla_hw_data\n");
		FUNC0();
		return;
	}

	FUNC6(&ha->hardware_lock, flags);
	FUNC4(vha);
	FUNC7(&ha->hardware_lock, flags);

	FUNC5(ISP_ABORT_NEEDED, &vha->dpc_flags);
	FUNC3(vha);
	if (FUNC2(vha) != QLA_SUCCESS)
		FUNC1(ql_dbg_tgt, vha, 0xe081,
		       "qla2x00_wait_for_hba_online() failed\n");
}