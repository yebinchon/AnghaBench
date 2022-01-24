#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_22__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {scalar_t__ fw_started; } ;
struct qla_hw_data {int /*<<< orphan*/  bars; TYPE_22__* pdev; scalar_t__ exchoffld_buf; scalar_t__ exlogin_buf; TYPE_1__ flags; int /*<<< orphan*/  board_disable; } ;
struct pci_dev {int /*<<< orphan*/  enable_cnt; } ;
struct TYPE_28__ {scalar_t__ online; } ;
struct TYPE_27__ {int /*<<< orphan*/  l; } ;
struct TYPE_26__ {int /*<<< orphan*/ * l; int /*<<< orphan*/  ldma; int /*<<< orphan*/  size; } ;
struct TYPE_29__ {int /*<<< orphan*/  host; TYPE_4__ flags; scalar_t__ timer_active; TYPE_3__ scan; TYPE_2__ gnl; int /*<<< orphan*/  dpc_flags; int /*<<< orphan*/  pci_flags; struct qla_hw_data* hw; } ;
typedef  TYPE_5__ scsi_qla_host_t ;
struct TYPE_25__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 scalar_t__ FUNC2 (struct qla_hw_data*) ; 
 scalar_t__ FUNC3 (struct qla_hw_data*) ; 
 scalar_t__ FUNC4 (struct qla_hw_data*) ; 
 scalar_t__ FUNC5 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  PFLG_DRIVER_REMOVING ; 
 scalar_t__ QLA_SUCCESS ; 
 int /*<<< orphan*/  UNLOADING ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 
 TYPE_5__* FUNC13 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_22__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,TYPE_5__*,int,char*) ; 
 int /*<<< orphan*/  ql_dbg_p3p ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,TYPE_5__*,int,char*) ; 
 int /*<<< orphan*/  ql_log_info ; 
 int /*<<< orphan*/  FUNC18 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC19 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC20 (struct qla_hw_data*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC21 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC24 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC25 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC29 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_5__*) ; 
 scalar_t__ FUNC32 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC34 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC35 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC36 (struct qla_hw_data*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC37 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC41 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC43(struct pci_dev *pdev)
{
	scsi_qla_host_t *base_vha;
	struct qla_hw_data  *ha;

	base_vha = FUNC13(pdev);
	ha = base_vha->hw;
	FUNC17(ql_log_info, base_vha, 0xb079,
	    "Removing driver\n");

	/* Indicate device removal to prevent future board_disable and wait
	 * until any pending board_disable has completed. */
	FUNC40(PFLG_DRIVER_REMOVING, &base_vha->pci_flags);
	FUNC7(&ha->board_disable);

	/*
	 * If the PCI device is disabled then there was a PCI-disconnect and
	 * qla2x00_disable_board_on_pci_error has taken care of most of the
	 * resources.
	 */
	if (!FUNC6(&pdev->enable_cnt)) {
		FUNC8(&ha->pdev->dev, base_vha->gnl.size,
		    base_vha->gnl.l, base_vha->gnl.ldma);
		base_vha->gnl.l = NULL;
		FUNC38(base_vha->host);
		FUNC10(ha);
		FUNC15(pdev, NULL);
		return;
	}
	FUNC30(base_vha);

	if (FUNC1(ha) || FUNC0(ha) || FUNC2(ha) ||
	    FUNC3(ha)) {
		if (ha->flags.fw_started)
			FUNC18(base_vha);
	} else if (!FUNC5(ha)) {
		if (FUNC4(ha)) {
			FUNC16(ql_dbg_p3p, base_vha, 0xb07e,
			    "Clearing fcoe driver presence.\n");
			if (FUNC32(base_vha) != QLA_SUCCESS)
				FUNC16(ql_dbg_p3p, base_vha, 0xb079,
				    "Error while clearing DRV-Presence.\n");
		}

		FUNC28(base_vha);
	}

	FUNC31(base_vha);

	/*
	 * if UNLOAD flag is already set, then continue unload,
	 * where it was set first.
	 */
	if (FUNC41(UNLOADING, &base_vha->dpc_flags))
		return;

	FUNC40(UNLOADING, &base_vha->dpc_flags);

	FUNC34(base_vha);

	FUNC8(&ha->pdev->dev,
		base_vha->gnl.size, base_vha->gnl.l, base_vha->gnl.ldma);

	base_vha->gnl.l = NULL;

	FUNC42(base_vha->scan.l);

	if (FUNC5(ha))
		FUNC35(base_vha, 20);

	FUNC20(ha, base_vha);

	FUNC22(base_vha);

	FUNC33(base_vha);

	/* Disable timer */
	if (base_vha->timer_active)
		FUNC27(base_vha);

	base_vha->flags.online = 0;

	/* free DMA memory */
	if (ha->exlogin_buf)
		FUNC25(ha);

	/* free DMA memory */
	if (ha->exchoffld_buf)
		FUNC24(ha);

	FUNC21(ha);

	FUNC36(ha, base_vha);

	FUNC26(base_vha, true);

	FUNC9(base_vha->host);
	FUNC37(ha);

	FUNC39(base_vha->host);

	FUNC23(base_vha);

	FUNC19(ha);

	FUNC38(base_vha->host);

	FUNC29(ha);

	FUNC14(ha->pdev, ha->bars);
	FUNC10(ha);

	FUNC12(pdev);

	FUNC11(pdev);
}