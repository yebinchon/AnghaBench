#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vnic_wq_buf {int /*<<< orphan*/  len; int /*<<< orphan*/  dma_addr; struct snic_host_req* os_buf; } ;
struct vnic_wq {int /*<<< orphan*/  vdev; } ;
struct TYPE_5__ {int /*<<< orphan*/ * next; } ;
struct snic_req_info {scalar_t__ sge_va; TYPE_2__ list; } ;
struct snic_host_req {int dummy; } ;
struct snic {int /*<<< orphan*/  shost; int /*<<< orphan*/  spl_cmd_lock; TYPE_1__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 struct snic_req_info* FUNC6 (struct snic_host_req*) ; 
 int /*<<< orphan*/  FUNC7 (struct snic*,struct snic_req_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct snic*,struct snic_req_info*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 struct snic* FUNC11 (int /*<<< orphan*/ ) ; 

void
FUNC12(struct vnic_wq *wq, struct vnic_wq_buf *buf)
{

	struct snic_host_req *req = buf->os_buf;
	struct snic *snic = FUNC11(wq->vdev);
	struct snic_req_info *rqi = NULL;
	unsigned long flags;

	FUNC2(&snic->pdev->dev, buf->dma_addr, buf->len,
			 DMA_TO_DEVICE);

	rqi = FUNC6(req);
	FUNC9(&snic->spl_cmd_lock, flags);
	if (FUNC5(&rqi->list)) {
		FUNC10(&snic->spl_cmd_lock, flags);
		goto end;
	}

	FUNC0(rqi->list.next == NULL); /* if not added to spl_cmd_list */
	FUNC4(&rqi->list);
	FUNC10(&snic->spl_cmd_lock, flags);

	if (rqi->sge_va) {
		FUNC7(snic, rqi);
		FUNC3((void *)rqi->sge_va);
		rqi->sge_va = 0;
	}
	FUNC8(snic, rqi);
	FUNC1(snic->shost, "snic_free_wq_buf .. freed.\n");

end:
	return;
}