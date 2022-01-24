#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct qedi_ctx {scalar_t__ boot_kset; int /*<<< orphan*/ * ll2_recv_thread; int /*<<< orphan*/  shost; int /*<<< orphan*/  udev; int /*<<< orphan*/  cdev; int /*<<< orphan*/  flags; int /*<<< orphan*/  dbg_ctx; int /*<<< orphan*/ * offload_thread; int /*<<< orphan*/ * tmf_thread; } ;
struct pci_dev {int dummy; } ;
struct TYPE_6__ {TYPE_2__* common; TYPE_1__* ll2; int /*<<< orphan*/  (* stop ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {int (* update_drv_state ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* remove ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* slowpath_stop ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_power_state ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  (* stop ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_D0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  QEDI_IN_OFFLINE ; 
 int QEDI_MODE_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct qedi_ctx* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct qedi_ctx*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct qedi_ctx*) ; 
 int /*<<< orphan*/  FUNC11 (struct qedi_ctx*) ; 
 int /*<<< orphan*/  FUNC12 (struct qedi_ctx*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct qedi_ctx*) ; 
 TYPE_3__* qedi_ops ; 
 int /*<<< orphan*/  FUNC15 (struct qedi_ctx*) ; 
 int /*<<< orphan*/  FUNC16 (struct qedi_ctx*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC24(struct pci_dev *pdev, int mode)
{
	struct qedi_ctx *qedi = FUNC7(pdev);
	int rval;

	if (qedi->tmf_thread) {
		FUNC2(qedi->tmf_thread);
		FUNC1(qedi->tmf_thread);
		qedi->tmf_thread = NULL;
	}

	if (qedi->offload_thread) {
		FUNC2(qedi->offload_thread);
		FUNC1(qedi->offload_thread);
		qedi->offload_thread = NULL;
	}

#ifdef CONFIG_DEBUG_FS
	qedi_dbg_host_exit(&qedi->dbg_ctx);
#endif
	if (!FUNC23(QEDI_IN_OFFLINE, &qedi->flags))
		qedi_ops->common->set_power_state(qedi->cdev, PCI_D0);

	FUNC16(qedi);

	if (!FUNC23(QEDI_IN_OFFLINE, &qedi->flags)) {
		qedi_ops->stop(qedi->cdev);
		qedi_ops->ll2->stop(qedi->cdev);
	}

	if (mode == QEDI_MODE_NORMAL)
		FUNC11(qedi);

	rval = qedi_ops->common->update_drv_state(qedi->cdev, false);
	if (rval)
		FUNC0(&qedi->dbg_ctx, "Failed to send drv state to MFW\n");

	if (!FUNC23(QEDI_IN_OFFLINE, &qedi->flags)) {
		qedi_ops->common->slowpath_stop(qedi->cdev);
		qedi_ops->common->remove(qedi->cdev);
	}

	FUNC10(qedi);

	if (mode == QEDI_MODE_NORMAL) {
		FUNC15(qedi);
		FUNC8(qedi);
		FUNC13(qedi->udev);
		FUNC12(qedi);

		FUNC5(qedi->shost);
		FUNC4(qedi->shost);

		if (qedi->ll2_recv_thread) {
			FUNC6(qedi->ll2_recv_thread);
			qedi->ll2_recv_thread = NULL;
		}
		FUNC14(qedi);

		if (qedi->boot_kset)
			FUNC3(qedi->boot_kset);
	}
}