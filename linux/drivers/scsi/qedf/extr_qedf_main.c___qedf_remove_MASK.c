#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct qedf_ctx {TYPE_4__* lport; int /*<<< orphan*/  io_mempool; int /*<<< orphan*/  cdev; int /*<<< orphan*/  dbg_ctx; int /*<<< orphan*/ * dpc_wq; int /*<<< orphan*/  cmd_mgr; int /*<<< orphan*/  ctlr; int /*<<< orphan*/  grcdump; int /*<<< orphan*/ * ll2_recv_wq; int /*<<< orphan*/  flags; int /*<<< orphan*/ * timer_work_queue; int /*<<< orphan*/ * link_update_wq; int /*<<< orphan*/  link_update; } ;
struct pci_dev {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  host; } ;
struct TYPE_10__ {TYPE_2__* common; int /*<<< orphan*/  (* stop ) (int /*<<< orphan*/ ) ;TYPE_1__* ll2; } ;
struct TYPE_9__ {int (* update_drv_state ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* remove ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* slowpath_stop ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_power_state ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  (* stop ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_D0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  QEDF_LL2_STARTED ; 
 int QEDF_MODE_RECOVERY ; 
 int /*<<< orphan*/  QEDF_UNLOADING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct qedf_ctx* FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 TYPE_3__* qed_ops ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct qedf_ctx*) ; 
 int /*<<< orphan*/  FUNC17 (struct qedf_ctx*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct qedf_ctx*) ; 
 int /*<<< orphan*/  FUNC20 (struct qedf_ctx*) ; 
 int FUNC21 (struct qedf_ctx*) ; 
 int /*<<< orphan*/  FUNC22 (struct qedf_ctx*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC29 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC33(struct pci_dev *pdev, int mode)
{
	struct qedf_ctx *qedf;
	int rc;

	if (!pdev) {
		FUNC0(NULL, "pdev is NULL.\n");
		return;
	}

	qedf = FUNC12(pdev);

	/*
	 * Prevent race where we're in board disable work and then try to
	 * rmmod the module.
	 */
	if (FUNC32(QEDF_UNLOADING, &qedf->flags)) {
		FUNC0(&qedf->dbg_ctx, "Already removing PCI function.\n");
		return;
	}

	if (mode != QEDF_MODE_RECOVERY)
		FUNC25(QEDF_UNLOADING, &qedf->flags);

	/* Logoff the fabric to upload all connections */
	if (mode == QEDF_MODE_RECOVERY)
		FUNC10(&qedf->ctlr);
	else
		FUNC5(qedf->lport);

	if (FUNC21(qedf) == false)
		FUNC0(&qedf->dbg_ctx, "Could not upload all sessions.\n");

#ifdef CONFIG_DEBUG_FS
	qedf_dbg_host_exit(&(qedf->dbg_ctx));
#endif

	/* Stop any link update handling */
	FUNC1(&qedf->link_update);
	FUNC3(qedf->link_update_wq);
	qedf->link_update_wq = NULL;

	if (qedf->timer_work_queue)
		FUNC3(qedf->timer_work_queue);

	/* Stop Light L2 */
	FUNC2(QEDF_LL2_STARTED, &qedf->flags);
	qed_ops->ll2->stop(qedf->cdev);
	if (qedf->ll2_recv_wq)
		FUNC3(qedf->ll2_recv_wq);

	/* Stop fastpath */
	FUNC20(qedf);
	FUNC16(qedf);

	/*
	 * During recovery don't destroy OS constructs that represent the
	 * physical port.
	 */
	if (mode != QEDF_MODE_RECOVERY) {
		FUNC18(&qedf->grcdump);
		FUNC19(qedf);

		/* Remove all SCSI/libfc/libfcoe structures */
		FUNC9(&qedf->ctlr);
		FUNC6(qedf->lport);
		FUNC8(qedf->lport->host);
		FUNC24(qedf->lport->host);
	}

	FUNC14(qedf->cmd_mgr);

	if (mode != QEDF_MODE_RECOVERY) {
		FUNC4(qedf->lport);
		FUNC7(qedf->lport);

		/* Wait for all vports to be reaped */
		FUNC22(qedf);
	}

	/*
	 * Now that all connections have been uploaded we can stop the
	 * rest of the qed operations
	 */
	qed_ops->stop(qedf->cdev);

	if (mode != QEDF_MODE_RECOVERY) {
		if (qedf->dpc_wq) {
			/* Stop general DPC handling */
			FUNC3(qedf->dpc_wq);
			qedf->dpc_wq = NULL;
		}
	}

	/* Final shutdown for the board */
	FUNC17(qedf);
	if (mode != QEDF_MODE_RECOVERY) {
		qed_ops->common->set_power_state(qedf->cdev, PCI_D0);
		FUNC13(pdev, NULL);
	}

	rc = qed_ops->common->update_drv_state(qedf->cdev, false);
	if (rc)
		FUNC0(&(qedf->dbg_ctx),
			"Failed to send drv state to MFW.\n");

	qed_ops->common->slowpath_stop(qedf->cdev);
	qed_ops->common->remove(qedf->cdev);

	FUNC11(qedf->io_mempool);

	/* Only reap the Scsi_host on a real removal */
	if (mode != QEDF_MODE_RECOVERY)
		FUNC23(qedf->lport->host);
}