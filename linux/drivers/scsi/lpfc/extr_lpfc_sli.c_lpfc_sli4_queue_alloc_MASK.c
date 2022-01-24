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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct lpfc_queue {int page_count; void** q_pgs; int entry_cnt_per_pg; int entry_size; int entry_count; int page_size; int /*<<< orphan*/  sched_spwork; int /*<<< orphan*/  sched_irqwork; int /*<<< orphan*/  spwork; int /*<<< orphan*/  irqwork; int /*<<< orphan*/  page_list; struct lpfc_hba* phba; int /*<<< orphan*/  cpu_list; int /*<<< orphan*/  child_list; int /*<<< orphan*/  wqfull_list; int /*<<< orphan*/  wq_list; int /*<<< orphan*/  list; } ;
struct TYPE_4__ {int if_page_sz; int wqpcnt; int /*<<< orphan*/  supported; } ;
struct TYPE_5__ {TYPE_1__ pc_sli4_params; } ;
struct lpfc_hba {TYPE_3__* pcidev; TYPE_2__ sli4_hba; } ;
struct lpfc_dmabuf {void* virt; int buffer_tag; int /*<<< orphan*/  list; int /*<<< orphan*/  phys; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_dmabuf*) ; 
 void* FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lpfc_sli4_dly_hba_process_cq ; 
 int /*<<< orphan*/  lpfc_sli4_dly_sp_process_cq ; 
 int /*<<< orphan*/  lpfc_sli4_hba_process_cq ; 
 int /*<<< orphan*/  FUNC10 (struct lpfc_queue*) ; 
 int /*<<< orphan*/  lpfc_sli4_sp_process_cq ; 

struct lpfc_queue *
FUNC11(struct lpfc_hba *phba, uint32_t page_size,
		      uint32_t entry_size, uint32_t entry_count, int cpu)
{
	struct lpfc_queue *queue;
	struct lpfc_dmabuf *dmabuf;
	uint32_t hw_page_size = phba->sli4_hba.pc_sli4_params.if_page_sz;
	uint16_t x, pgcnt;

	if (!phba->sli4_hba.pc_sli4_params.supported)
		hw_page_size = page_size;

	pgcnt = FUNC0(entry_size * entry_count, hw_page_size) / hw_page_size;

	/* If needed, Adjust page count to match the max the adapter supports */
	if (pgcnt > phba->sli4_hba.pc_sli4_params.wqpcnt)
		pgcnt = phba->sli4_hba.pc_sli4_params.wqpcnt;

	queue = FUNC8(sizeof(*queue) + (sizeof(void *) * pgcnt),
			     GFP_KERNEL, FUNC4(cpu));
	if (!queue)
		return NULL;

	FUNC2(&queue->list);
	FUNC2(&queue->wq_list);
	FUNC2(&queue->wqfull_list);
	FUNC2(&queue->page_list);
	FUNC2(&queue->child_list);
	FUNC2(&queue->cpu_list);

	/* Set queue parameters now.  If the system cannot provide memory
	 * resources, the free routine needs to know what was allocated.
	 */
	queue->page_count = pgcnt;
	queue->q_pgs = (void **)&queue[1];
	queue->entry_cnt_per_pg = hw_page_size / entry_size;
	queue->entry_size = entry_size;
	queue->entry_count = entry_count;
	queue->page_size = hw_page_size;
	queue->phba = phba;

	for (x = 0; x < queue->page_count; x++) {
		dmabuf = FUNC8(sizeof(*dmabuf), GFP_KERNEL,
				      FUNC5(&phba->pcidev->dev));
		if (!dmabuf)
			goto out_fail;
		dmabuf->virt = FUNC6(&phba->pcidev->dev,
						  hw_page_size, &dmabuf->phys,
						  GFP_KERNEL);
		if (!dmabuf->virt) {
			FUNC7(dmabuf);
			goto out_fail;
		}
		dmabuf->buffer_tag = x;
		FUNC9(&dmabuf->list, &queue->page_list);
		/* use lpfc_sli4_qe to index a paritcular entry in this page */
		queue->q_pgs[x] = dmabuf->virt;
	}
	FUNC3(&queue->irqwork, lpfc_sli4_hba_process_cq);
	FUNC3(&queue->spwork, lpfc_sli4_sp_process_cq);
	FUNC1(&queue->sched_irqwork, lpfc_sli4_dly_hba_process_cq);
	FUNC1(&queue->sched_spwork, lpfc_sli4_dly_sp_process_cq);

	/* notify_interval will be set during q creation */

	return queue;
out_fail:
	FUNC10(queue);
	return NULL;
}