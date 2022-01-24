#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ fw_started; scalar_t__ fce_enabled; } ;
struct qla_hw_data {TYPE_3__* isp_ops; scalar_t__ interrupts_on; TYPE_1__ flags; scalar_t__ eft; int /*<<< orphan*/  board_disable; } ;
struct pci_dev {int /*<<< orphan*/  enable_cnt; } ;
struct TYPE_15__ {scalar_t__ init_done; scalar_t__ online; } ;
struct TYPE_17__ {TYPE_2__ flags; scalar_t__ timer_active; int /*<<< orphan*/  pci_flags; struct qla_hw_data* hw; } ;
typedef  TYPE_4__ scsi_qla_host_t ;
struct TYPE_16__ {int /*<<< orphan*/  (* disable_intrs ) (struct qla_hw_data*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 scalar_t__ FUNC2 (struct qla_hw_data*) ; 
 scalar_t__ FUNC3 (struct qla_hw_data*) ; 
 scalar_t__ FUNC4 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  PFLG_DRIVER_REMOVING ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 TYPE_4__* FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_4__*,int,char*) ; 
 int /*<<< orphan*/  ql_log_info ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct qla_hw_data*) ; 

__attribute__((used)) static void
FUNC20(struct pci_dev *pdev)
{
	scsi_qla_host_t *vha;
	struct qla_hw_data  *ha;

	vha = FUNC8(pdev);
	ha = vha->hw;

	FUNC9(ql_log_info, vha, 0xfffa,
		"Adapter shutdown\n");

	/*
	 * Prevent future board_disable and wait
	 * until any pending board_disable has completed.
	 */
	FUNC18(PFLG_DRIVER_REMOVING, &vha->pci_flags);
	FUNC6(&ha->board_disable);

	if (!FUNC5(&pdev->enable_cnt))
		return;

	/* Notify ISPFX00 firmware */
	if (FUNC4(ha))
		FUNC17(vha, 20);

	/* Turn-off FCE trace */
	if (ha->flags.fce_enabled) {
		FUNC12(vha, NULL, NULL);
		ha->flags.fce_enabled = 0;
	}

	/* Turn-off EFT trace */
	if (ha->eft)
		FUNC11(vha);

	if (FUNC1(ha) ||  FUNC0(ha) || FUNC2(ha) ||
	    FUNC3(ha)) {
		if (ha->flags.fw_started)
			FUNC10(vha);
	} else {
		/* Stop currently executing firmware. */
		FUNC16(vha);
	}

	/* Disable timer */
	if (vha->timer_active)
		FUNC15(vha);

	/* Turn adapter off line */
	vha->flags.online = 0;

	/* turn-off interrupts on the card */
	if (ha->interrupts_on) {
		vha->flags.init_done = 0;
		ha->isp_ops->disable_intrs(ha);
	}

	FUNC14(vha);

	FUNC13(ha);

	FUNC7(pdev);
	FUNC9(ql_log_info, vha, 0xfffe,
		"Adapter shutdown successfully.\n");
}