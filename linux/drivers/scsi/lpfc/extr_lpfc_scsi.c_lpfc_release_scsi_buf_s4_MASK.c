#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct lpfc_sli4_hdw_queue {int /*<<< orphan*/  abts_io_buf_list_lock; int /*<<< orphan*/  abts_scsi_io_bufs; int /*<<< orphan*/  lpfc_abts_io_buf_list; } ;
struct lpfc_io_buf {int /*<<< orphan*/  list; int /*<<< orphan*/ * pCmd; scalar_t__ exch_busy; struct lpfc_sli4_hdw_queue* hdwq; scalar_t__ prot_seg_cnt; scalar_t__ seg_cnt; } ;
struct lpfc_hba {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,struct lpfc_io_buf*,struct lpfc_sli4_hdw_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC4(struct lpfc_hba *phba, struct lpfc_io_buf *psb)
{
	struct lpfc_sli4_hdw_queue *qp;
	unsigned long iflag = 0;

	psb->seg_cnt = 0;
	psb->prot_seg_cnt = 0;

	qp = psb->hdwq;
	if (psb->exch_busy) {
		FUNC2(&qp->abts_io_buf_list_lock, iflag);
		psb->pCmd = NULL;
		FUNC0(&psb->list, &qp->lpfc_abts_io_buf_list);
		qp->abts_scsi_io_bufs++;
		FUNC3(&qp->abts_io_buf_list_lock, iflag);
	} else {
		FUNC1(phba, (struct lpfc_io_buf *)psb, qp);
	}
}