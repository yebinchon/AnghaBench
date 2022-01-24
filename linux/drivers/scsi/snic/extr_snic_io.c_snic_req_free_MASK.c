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
struct snic_req_info {scalar_t__ sge_va; int req_len; size_t rq_pool_type; scalar_t__ req_pa; struct snic_req_info* req; struct snic_req_info* dr_req; struct snic_req_info* abort_req; } ;
struct snic_host_req {int dummy; } ;
struct snic {int /*<<< orphan*/ * req_pool; TYPE_1__* pdev; int /*<<< orphan*/  shost; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t SNIC_REQ_TM_CACHE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct snic_req_info*,struct snic_req_info*,struct snic_req_info*,struct snic_req_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snic_req_info*,int /*<<< orphan*/ ) ; 

void
FUNC4(struct snic *snic, struct snic_req_info *rqi)
{
	FUNC0(rqi->req == rqi->abort_req);
	FUNC0(rqi->req == rqi->dr_req);
	FUNC0(rqi->sge_va != 0);

	FUNC1(snic->shost,
		      "Req_free:rqi %p:ioreq %p:abt %p:dr %p\n",
		      rqi, rqi->req, rqi->abort_req, rqi->dr_req);

	if (rqi->abort_req) {
		if (rqi->abort_req->req_pa)
			FUNC2(&snic->pdev->dev,
					 rqi->abort_req->req_pa,
					 sizeof(struct snic_host_req),
					 DMA_TO_DEVICE);

		FUNC3(rqi->abort_req, snic->req_pool[SNIC_REQ_TM_CACHE]);
	}

	if (rqi->dr_req) {
		if (rqi->dr_req->req_pa)
			FUNC2(&snic->pdev->dev,
					 rqi->dr_req->req_pa,
					 sizeof(struct snic_host_req),
					 DMA_TO_DEVICE);

		FUNC3(rqi->dr_req, snic->req_pool[SNIC_REQ_TM_CACHE]);
	}

	if (rqi->req->req_pa)
		FUNC2(&snic->pdev->dev,
				 rqi->req->req_pa,
				 rqi->req_len,
				 DMA_TO_DEVICE);

	FUNC3(rqi, snic->req_pool[rqi->rq_pool_type]);
}