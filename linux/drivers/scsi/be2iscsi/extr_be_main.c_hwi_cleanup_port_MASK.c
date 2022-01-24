#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct hwi_controller {struct hwi_context_memory* phwi_ctxt; } ;
struct hwi_context_memory {TYPE_4__* be_eq; struct be_queue_info* be_cq; struct be_queue_info* be_def_dataq; struct be_queue_info* be_def_hdrq; struct be_queue_info* be_wrbq; } ;
struct be_ctrl_info {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  ulp_supported; } ;
struct TYPE_5__ {int cxns_per_ctrl; } ;
struct beiscsi_hba {int num_cpus; struct be_ctrl_info ctrl; TYPE_3__* pcidev; TYPE_2__ fw_config; TYPE_1__ params; struct hwi_controller* phwi_ctrlr; } ;
struct be_queue_info {scalar_t__ created; } ;
struct TYPE_8__ {struct be_queue_info q; } ;
struct TYPE_7__ {scalar_t__ msix_enabled; } ;

/* Variables and functions */
 int BEISCSI_ULP_COUNT ; 
 int /*<<< orphan*/  QTYPE_CQ ; 
 int /*<<< orphan*/  QTYPE_DPDUQ ; 
 int /*<<< orphan*/  QTYPE_EQ ; 
 int /*<<< orphan*/  QTYPE_SGL ; 
 int /*<<< orphan*/  QTYPE_WRBQ ; 
 int /*<<< orphan*/  FUNC0 (struct be_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct beiscsi_hba*,struct be_queue_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct beiscsi_hba*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct be_ctrl_info*,struct be_queue_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct be_ctrl_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC8 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC9 (struct be_queue_info*) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct beiscsi_hba *phba)
{
	struct be_queue_info *q;
	struct be_ctrl_info *ctrl = &phba->ctrl;
	struct hwi_controller *phwi_ctrlr;
	struct hwi_context_memory *phwi_context;
	int i, eq_for_mcc, ulp_num;

	for (ulp_num = 0; ulp_num < BEISCSI_ULP_COUNT; ulp_num++)
		if (FUNC10(ulp_num, &phba->fw_config.ulp_supported))
			FUNC4(phba, ulp_num);

	/**
	 * Purge all EQ entries that may have been left out. This is to
	 * workaround a problem we've seen occasionally where driver gets an
	 * interrupt with EQ entry bit set after stopping the controller.
	 */
	FUNC8(phba);

	phwi_ctrlr = phba->phwi_ctrlr;
	phwi_context = phwi_ctrlr->phwi_ctxt;

	FUNC0(ctrl);

	for (i = 0; i < phba->params.cxns_per_ctrl; i++) {
		q = &phwi_context->be_wrbq[i];
		if (q->created)
			FUNC5(ctrl, q, QTYPE_WRBQ);
	}
	FUNC9(phwi_context->be_wrbq);
	FUNC7(phba);

	for (ulp_num = 0; ulp_num < BEISCSI_ULP_COUNT; ulp_num++) {
		if (FUNC10(ulp_num, &phba->fw_config.ulp_supported)) {

			q = &phwi_context->be_def_hdrq[ulp_num];
			if (q->created)
				FUNC5(ctrl, q, QTYPE_DPDUQ);

			q = &phwi_context->be_def_dataq[ulp_num];
			if (q->created)
				FUNC5(ctrl, q, QTYPE_DPDUQ);
		}
	}

	FUNC5(ctrl, NULL, QTYPE_SGL);

	for (i = 0; i < (phba->num_cpus); i++) {
		q = &phwi_context->be_cq[i];
		if (q->created) {
			FUNC2(phba, q);
			FUNC5(ctrl, q, QTYPE_CQ);
		}
	}

	FUNC1(phba);
	if (phba->pcidev->msix_enabled)
		eq_for_mcc = 1;
	else
		eq_for_mcc = 0;
	for (i = 0; i < (phba->num_cpus + eq_for_mcc); i++) {
		q = &phwi_context->be_eq[i].q;
		if (q->created) {
			FUNC2(phba, q);
			FUNC5(ctrl, q, QTYPE_EQ);
		}
	}
	/* this ensures complete FW cleanup */
	FUNC3(phba);
	/* last communication, indicate driver is unloading */
	FUNC6(&phba->ctrl, 0);
}