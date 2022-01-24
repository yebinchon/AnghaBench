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
typedef  union lpfc_wqe128 {int dummy; } lpfc_wqe128 ;
typedef  union lpfc_wqe {int dummy; } lpfc_wqe ;
struct sli4_sge {int /*<<< orphan*/  word2; } ;
struct lpfc_sli4_hdw_queue {int /*<<< orphan*/  empty_io_bufs; } ;
struct lpfc_nodelist {int /*<<< orphan*/  cmd_pending; } ;
struct lpfc_iocbq {int /*<<< orphan*/  wqe_cmpl; int /*<<< orphan*/  iocb_flag; union lpfc_wqe128 wqe; } ;
struct lpfc_io_buf {int /*<<< orphan*/  flags; struct sli4_sge* dma_sgl; int /*<<< orphan*/  start_time; struct lpfc_iocbq cur_iocbq; } ;
struct TYPE_2__ {struct lpfc_sli4_hdw_queue* hdwq; } ;
struct lpfc_hba {TYPE_1__ sli4_hba; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPFC_IO_NVME ; 
 int /*<<< orphan*/  LPFC_SBUF_BUMP_QDEPTH ; 
 int /*<<< orphan*/  LPFC_SGE_TYPE_SKIP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sli4_sge*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 struct lpfc_io_buf* FUNC3 (struct lpfc_hba*,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC4 (struct lpfc_hba*,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  lpfc_nvme_io_cmd_wqe_cmpl ; 
 int /*<<< orphan*/  lpfc_sli4_sge_last ; 
 int /*<<< orphan*/  lpfc_sli4_sge_type ; 
 int /*<<< orphan*/  FUNC5 (union lpfc_wqe128*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct lpfc_io_buf *
FUNC6(struct lpfc_hba *phba, struct lpfc_nodelist *ndlp,
		  int idx, int expedite)
{
	struct lpfc_io_buf *lpfc_ncmd;
	struct lpfc_sli4_hdw_queue *qp;
	struct sli4_sge *sgl;
	struct lpfc_iocbq *pwqeq;
	union lpfc_wqe128 *wqe;

	lpfc_ncmd = FUNC3(phba, NULL, idx, expedite);

	if (lpfc_ncmd) {
		pwqeq = &(lpfc_ncmd->cur_iocbq);
		wqe = &pwqeq->wqe;

		/* Setup key fields in buffer that may have been changed
		 * if other protocols used this buffer.
		 */
		pwqeq->iocb_flag = LPFC_IO_NVME;
		pwqeq->wqe_cmpl = lpfc_nvme_io_cmd_wqe_cmpl;
		lpfc_ncmd->start_time = jiffies;
		lpfc_ncmd->flags = 0;

		/* Rsp SGE will be filled in when we rcv an IO
		 * from the NVME Layer to be sent.
		 * The cmd is going to be embedded so we need a SKIP SGE.
		 */
		sgl = lpfc_ncmd->dma_sgl;
		FUNC1(lpfc_sli4_sge_type, sgl, LPFC_SGE_TYPE_SKIP);
		FUNC1(lpfc_sli4_sge_last, sgl, 0);
		sgl->word2 = FUNC2(sgl->word2);
		/* Fill in word 3 / sgl_len during cmd submission */

		/* Initialize 64 bytes only */
		FUNC5(wqe, 0, sizeof(union lpfc_wqe));

		if (FUNC4(phba, ndlp)) {
			FUNC0(&ndlp->cmd_pending);
			lpfc_ncmd->flags |= LPFC_SBUF_BUMP_QDEPTH;
		}

	} else {
		qp = &phba->sli4_hba.hdwq[idx];
		qp->empty_io_bufs++;
	}

	return  lpfc_ncmd;
}