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
struct lpfc_sli4_hdw_queue {int /*<<< orphan*/  lpfc_abts_io_buf_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  lpfc_abts_els_sgl_list; int /*<<< orphan*/  lpfc_abts_nvmet_ctx_list; struct lpfc_sli4_hdw_queue* hdwq; } ;
struct lpfc_hba {int cfg_enable_fc4_type; int cfg_hdw_queue; TYPE_1__ sli4_hba; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_INIT ; 
 int LPFC_ENABLE_NVME ; 
 int LPFC_XRI_EXCH_BUSY_WAIT_T1 ; 
 int LPFC_XRI_EXCH_BUSY_WAIT_T2 ; 
 int LPFC_XRI_EXCH_BUSY_WAIT_TMO ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(struct lpfc_hba *phba)
{
	struct lpfc_sli4_hdw_queue *qp;
	int idx, ccnt;
	int wait_time = 0;
	int io_xri_cmpl = 1;
	int nvmet_xri_cmpl = 1;
	int els_xri_cmpl = FUNC0(&phba->sli4_hba.lpfc_abts_els_sgl_list);

	/* Driver just aborted IOs during the hba_unset process.  Pause
	 * here to give the HBA time to complete the IO and get entries
	 * into the abts lists.
	 */
	FUNC3(LPFC_XRI_EXCH_BUSY_WAIT_T1 * 5);

	/* Wait for NVME pending IO to flush back to transport. */
	if (phba->cfg_enable_fc4_type & LPFC_ENABLE_NVME)
		FUNC1(phba);

	ccnt = 0;
	for (idx = 0; idx < phba->cfg_hdw_queue; idx++) {
		qp = &phba->sli4_hba.hdwq[idx];
		io_xri_cmpl = FUNC0(&qp->lpfc_abts_io_buf_list);
		if (!io_xri_cmpl) /* if list is NOT empty */
			ccnt++;
	}
	if (ccnt)
		io_xri_cmpl = 0;

	if (phba->cfg_enable_fc4_type & LPFC_ENABLE_NVME) {
		nvmet_xri_cmpl =
			FUNC0(&phba->sli4_hba.lpfc_abts_nvmet_ctx_list);
	}

	while (!els_xri_cmpl || !io_xri_cmpl || !nvmet_xri_cmpl) {
		if (wait_time > LPFC_XRI_EXCH_BUSY_WAIT_TMO) {
			if (!nvmet_xri_cmpl)
				FUNC2(phba, KERN_ERR, LOG_INIT,
						"6424 NVMET XRI exchange busy "
						"wait time: %d seconds.\n",
						wait_time/1000);
			if (!io_xri_cmpl)
				FUNC2(phba, KERN_ERR, LOG_INIT,
						"6100 IO XRI exchange busy "
						"wait time: %d seconds.\n",
						wait_time/1000);
			if (!els_xri_cmpl)
				FUNC2(phba, KERN_ERR, LOG_INIT,
						"2878 ELS XRI exchange busy "
						"wait time: %d seconds.\n",
						wait_time/1000);
			FUNC3(LPFC_XRI_EXCH_BUSY_WAIT_T2);
			wait_time += LPFC_XRI_EXCH_BUSY_WAIT_T2;
		} else {
			FUNC3(LPFC_XRI_EXCH_BUSY_WAIT_T1);
			wait_time += LPFC_XRI_EXCH_BUSY_WAIT_T1;
		}

		ccnt = 0;
		for (idx = 0; idx < phba->cfg_hdw_queue; idx++) {
			qp = &phba->sli4_hba.hdwq[idx];
			io_xri_cmpl = FUNC0(
			    &qp->lpfc_abts_io_buf_list);
			if (!io_xri_cmpl) /* if list is NOT empty */
				ccnt++;
		}
		if (ccnt)
			io_xri_cmpl = 0;

		if (phba->cfg_enable_fc4_type & LPFC_ENABLE_NVME) {
			nvmet_xri_cmpl = FUNC0(
				&phba->sli4_hba.lpfc_abts_nvmet_ctx_list);
		}
		els_xri_cmpl =
			FUNC0(&phba->sli4_hba.lpfc_abts_els_sgl_list);

	}
}