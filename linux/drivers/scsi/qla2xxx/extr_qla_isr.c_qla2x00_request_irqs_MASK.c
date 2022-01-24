#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct rsp_que {int dummy; } ;
struct TYPE_8__ {int msi_enabled; int mr_intr_valid; } ;
struct qla_hw_data {int /*<<< orphan*/  hardware_lock; TYPE_2__ flags; TYPE_5__* pdev; TYPE_1__* isp_ops; int /*<<< orphan*/  fw_attributes; int /*<<< orphan*/  chip_revision; TYPE_4__* iobase; } ;
typedef  int /*<<< orphan*/  scsi_qla_host_t ;
struct TYPE_9__ {int /*<<< orphan*/  semaphore; } ;
struct TYPE_10__ {TYPE_3__ isp; } ;
typedef  TYPE_4__ device_reg_t ;
struct TYPE_11__ {int subsystem_device; int irq; int /*<<< orphan*/  revision; int /*<<< orphan*/  subsystem_vendor; } ;
struct TYPE_7__ {int /*<<< orphan*/  intr_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct qla_hw_data*) ; 
 scalar_t__ FUNC4 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct qla_hw_data*) ; 
 scalar_t__ FUNC10 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct qla_hw_data*) ; 
 scalar_t__ FUNC12 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  PCI_IRQ_MSI ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_HP ; 
 int /*<<< orphan*/  QLA2XXX_DRIVER_NAME ; 
 int QLA_FUNCTION_FAILED ; 
 int /*<<< orphan*/  QLA_MSIX_CHIP_REV_24XX ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_5__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (TYPE_5__*) ; 
 int ql2xenablemsix ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,...) ; 
 int /*<<< orphan*/  ql_dbg_init ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,int,...) ; 
 int /*<<< orphan*/  ql_log_info ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int FUNC18 (struct qla_hw_data*,struct rsp_que*) ; 
 int FUNC19 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rsp_que*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

int
FUNC22(struct qla_hw_data *ha, struct rsp_que *rsp)
{
	int ret = QLA_FUNCTION_FAILED;
	device_reg_t *reg = ha->iobase;
	scsi_qla_host_t *vha = FUNC15(ha->pdev);

	/* If possible, enable MSI-X. */
	if (ql2xenablemsix == 0 || (!FUNC4(ha) && !FUNC6(ha) &&
	    !FUNC11(ha) && !FUNC0(ha) && !FUNC3(ha) &&
	    !FUNC12(ha) && !FUNC7(ha) && !FUNC8(ha)))
		goto skip_msi;

	if (ql2xenablemsix == 2)
		goto skip_msix;

	if (ha->pdev->subsystem_vendor == PCI_VENDOR_ID_HP &&
		(ha->pdev->subsystem_device == 0x7040 ||
		ha->pdev->subsystem_device == 0x7041 ||
		ha->pdev->subsystem_device == 0x1705)) {
		FUNC17(ql_log_warn, vha, 0x0034,
		    "MSI-X: Unsupported ISP 2432 SSVID/SSDID (0x%X,0x%X).\n",
			ha->pdev->subsystem_vendor,
			ha->pdev->subsystem_device);
		goto skip_msi;
	}

	if (FUNC4(ha) && (ha->pdev->revision < QLA_MSIX_CHIP_REV_24XX)) {
		FUNC17(ql_log_warn, vha, 0x0035,
		    "MSI-X; Unsupported ISP2432 (0x%X, 0x%X).\n",
		    ha->pdev->revision, QLA_MSIX_CHIP_REV_24XX);
		goto skip_msix;
	}

	ret = FUNC18(ha, rsp);
	if (!ret) {
		FUNC16(ql_dbg_init, vha, 0x0036,
		    "MSI-X: Enabled (0x%X, 0x%X).\n",
		    ha->chip_revision, ha->fw_attributes);
		goto clear_risc_ints;
	}

skip_msix:

	FUNC17(ql_log_info, vha, 0x0037,
	    "Falling back-to MSI mode -%d.\n", ret);

	if (!FUNC5(ha) && !FUNC6(ha) && !FUNC11(ha) &&
	    !FUNC9(ha) && !FUNC2(ha) && !FUNC12(ha) &&
	    !FUNC7(ha) && !FUNC8(ha))
		goto skip_msi;

	ret = FUNC14(ha->pdev, 1, 1, PCI_IRQ_MSI);
	if (!ret) {
		FUNC16(ql_dbg_init, vha, 0x0038,
		    "MSI: Enabled.\n");
		ha->flags.msi_enabled = 1;
	} else
		FUNC17(ql_log_warn, vha, 0x0039,
		    "Falling back-to INTa mode -- %d.\n", ret);
skip_msi:

	/* Skip INTx on ISP82xx. */
	if (!ha->flags.msi_enabled && FUNC10(ha))
		return QLA_FUNCTION_FAILED;

	ret = FUNC19(ha->pdev->irq, ha->isp_ops->intr_handler,
	    ha->flags.msi_enabled ? 0 : IRQF_SHARED,
	    QLA2XXX_DRIVER_NAME, rsp);
	if (ret) {
		FUNC17(ql_log_warn, vha, 0x003a,
		    "Failed to reserve interrupt %d already in use.\n",
		    ha->pdev->irq);
		goto fail;
	} else if (!ha->flags.msi_enabled) {
		FUNC16(ql_dbg_init, vha, 0x0125,
		    "INTa mode: Enabled.\n");
		ha->flags.mr_intr_valid = 1;
	}

clear_risc_ints:
	if (FUNC1(ha) || FUNC12(ha))
		goto fail;

	FUNC20(&ha->hardware_lock);
	FUNC13(&reg->isp.semaphore, 0);
	FUNC21(&ha->hardware_lock);

fail:
	return ret;
}