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
typedef  int uint32_t ;
struct lpfc_rqe {void* address_hi; void* address_lo; } ;
struct lpfc_queue {int dummy; } ;
struct TYPE_5__ {struct lpfc_queue* dat_rq; struct lpfc_queue* hdr_rq; } ;
struct lpfc_hba {TYPE_4__* hbqs; int /*<<< orphan*/  hbalock; TYPE_1__ sli4_hba; } ;
struct TYPE_7__ {int /*<<< orphan*/  list; int /*<<< orphan*/  phys; } ;
struct TYPE_6__ {int /*<<< orphan*/  phys; } ;
struct hbq_dmabuf {int tag; TYPE_3__ dbuf; TYPE_2__ hbuf; } ;
struct TYPE_8__ {int /*<<< orphan*/  hbq_buffer_list; } ;

/* Variables and functions */
 int LPFC_ELS_HBQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct lpfc_queue*,struct lpfc_queue*,struct lpfc_rqe*,struct lpfc_rqe*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct lpfc_hba *phba, uint32_t hbqno,
			    struct hbq_dmabuf *hbq_buf)
{
	int rc;
	struct lpfc_rqe hrqe;
	struct lpfc_rqe drqe;
	struct lpfc_queue *hrq;
	struct lpfc_queue *drq;

	if (hbqno != LPFC_ELS_HBQ)
		return 1;
	hrq = phba->sli4_hba.hdr_rq;
	drq = phba->sli4_hba.dat_rq;

	FUNC1(&phba->hbalock);
	hrqe.address_lo = FUNC4(hbq_buf->hbuf.phys);
	hrqe.address_hi = FUNC3(hbq_buf->hbuf.phys);
	drqe.address_lo = FUNC4(hbq_buf->dbuf.phys);
	drqe.address_hi = FUNC3(hbq_buf->dbuf.phys);
	rc = FUNC2(hrq, drq, &hrqe, &drqe);
	if (rc < 0)
		return rc;
	hbq_buf->tag = (rc | (hbqno << 16));
	FUNC0(&hbq_buf->dbuf.list, &phba->hbqs[hbqno].hbq_buffer_list);
	return 0;
}