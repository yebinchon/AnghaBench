#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  union iscsi_cqe {int dummy; } iscsi_cqe ;
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct qedi_ctx {int num_queues; TYPE_2__** global_queues; scalar_t__ p_cpuq; int /*<<< orphan*/  dbg_ctx; TYPE_1__* pdev; } ;
struct global_queue {int dummy; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_4__ {int cq_mem_size; int cq_pbl_size; scalar_t__ cq_pbl_dma; void* cq_pbl; scalar_t__ cq_dma; void* cq; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int QEDI_CQ_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_2__**) ; 
 int /*<<< orphan*/  QEDI_LOG_DISC ; 
 int QEDI_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct qedi_ctx*) ; 
 int FUNC6 (struct qedi_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (struct qedi_ctx*) ; 

__attribute__((used)) static int FUNC8(struct qedi_ctx *qedi)
{
	u32 *list;
	int i;
	int status = 0, rc;
	u32 *pbl;
	dma_addr_t page;
	int num_pages;

	/*
	 * Number of global queues (CQ / RQ). This should
	 * be <= number of available MSIX vectors for the PF
	 */
	if (!qedi->num_queues) {
		FUNC0(&qedi->dbg_ctx, "No MSI-X vectors available!\n");
		return 1;
	}

	/* Make sure we allocated the PBL that will contain the physical
	 * addresses of our queues
	 */
	if (!qedi->p_cpuq) {
		status = 1;
		goto mem_alloc_failure;
	}

	qedi->global_queues = FUNC4((sizeof(struct global_queue *) *
				       qedi->num_queues), GFP_KERNEL);
	if (!qedi->global_queues) {
		FUNC0(&qedi->dbg_ctx,
			 "Unable to allocate global queues array ptr memory\n");
		return -ENOMEM;
	}
	FUNC1(&qedi->dbg_ctx, QEDI_LOG_DISC,
		  "qedi->global_queues=%p.\n", qedi->global_queues);

	/* Allocate DMA coherent buffers for BDQ */
	rc = FUNC5(qedi);
	if (rc)
		goto mem_alloc_failure;

	/* Allocate DMA coherent buffers for NVM_ISCSI_CFG */
	rc = FUNC6(qedi);
	if (rc)
		goto mem_alloc_failure;

	/* Allocate a CQ and an associated PBL for each MSI-X
	 * vector.
	 */
	for (i = 0; i < qedi->num_queues; i++) {
		qedi->global_queues[i] =
					FUNC4(sizeof(*qedi->global_queues[0]),
						GFP_KERNEL);
		if (!qedi->global_queues[i]) {
			FUNC0(&qedi->dbg_ctx,
				 "Unable to allocation global queue %d.\n", i);
			goto mem_alloc_failure;
		}

		qedi->global_queues[i]->cq_mem_size =
		    (QEDI_CQ_SIZE + 8) * sizeof(union iscsi_cqe);
		qedi->global_queues[i]->cq_mem_size =
		    (qedi->global_queues[i]->cq_mem_size +
		    (QEDI_PAGE_SIZE - 1));

		qedi->global_queues[i]->cq_pbl_size =
		    (qedi->global_queues[i]->cq_mem_size /
		    QEDI_PAGE_SIZE) * sizeof(void *);
		qedi->global_queues[i]->cq_pbl_size =
		    (qedi->global_queues[i]->cq_pbl_size +
		    (QEDI_PAGE_SIZE - 1));

		qedi->global_queues[i]->cq = FUNC3(&qedi->pdev->dev,
								qedi->global_queues[i]->cq_mem_size,
								&qedi->global_queues[i]->cq_dma,
								GFP_KERNEL);

		if (!qedi->global_queues[i]->cq) {
			FUNC2(&qedi->dbg_ctx,
				  "Could not allocate cq.\n");
			status = -ENOMEM;
			goto mem_alloc_failure;
		}
		qedi->global_queues[i]->cq_pbl = FUNC3(&qedi->pdev->dev,
								    qedi->global_queues[i]->cq_pbl_size,
								    &qedi->global_queues[i]->cq_pbl_dma,
								    GFP_KERNEL);

		if (!qedi->global_queues[i]->cq_pbl) {
			FUNC2(&qedi->dbg_ctx,
				  "Could not allocate cq PBL.\n");
			status = -ENOMEM;
			goto mem_alloc_failure;
		}

		/* Create PBL */
		num_pages = qedi->global_queues[i]->cq_mem_size /
		    QEDI_PAGE_SIZE;
		page = qedi->global_queues[i]->cq_dma;
		pbl = (u32 *)qedi->global_queues[i]->cq_pbl;

		while (num_pages--) {
			*pbl = (u32)page;
			pbl++;
			*pbl = (u32)((u64)page >> 32);
			pbl++;
			page += QEDI_PAGE_SIZE;
		}
	}

	list = (u32 *)qedi->p_cpuq;

	/*
	 * The list is built as follows: CQ#0 PBL pointer, RQ#0 PBL pointer,
	 * CQ#1 PBL pointer, RQ#1 PBL pointer, etc.  Each PBL pointer points
	 * to the physical address which contains an array of pointers to the
	 * physical addresses of the specific queue pages.
	 */
	for (i = 0; i < qedi->num_queues; i++) {
		*list = (u32)qedi->global_queues[i]->cq_pbl_dma;
		list++;
		*list = (u32)((u64)qedi->global_queues[i]->cq_pbl_dma >> 32);
		list++;

		*list = (u32)0;
		list++;
		*list = (u32)((u64)0 >> 32);
		list++;
	}

	return 0;

mem_alloc_failure:
	FUNC7(qedi);
	return status;
}