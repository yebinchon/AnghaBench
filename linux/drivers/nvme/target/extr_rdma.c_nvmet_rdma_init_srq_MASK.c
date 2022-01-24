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
struct nvmet_rdma_device {size_t srq_size; struct ib_srq* srq_cmds; struct ib_srq* srq; int /*<<< orphan*/  pd; scalar_t__ inline_page_count; } ;
struct TYPE_2__ {size_t max_wr; scalar_t__ srq_limit; scalar_t__ max_sge; } ;
struct ib_srq_init_attr {int /*<<< orphan*/  srq_type; TYPE_1__ attr; int /*<<< orphan*/ * member_0; } ;
struct ib_srq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_SRQT_BASIC ; 
 scalar_t__ FUNC0 (struct ib_srq*) ; 
 int FUNC1 (struct ib_srq*) ; 
 struct ib_srq* FUNC2 (int /*<<< orphan*/ ,struct ib_srq_init_attr*) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_srq*) ; 
 struct ib_srq* FUNC4 (struct nvmet_rdma_device*,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nvmet_rdma_device*,struct ib_srq*,size_t,int) ; 
 int FUNC6 (struct nvmet_rdma_device*,struct ib_srq*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(struct nvmet_rdma_device *ndev)
{
	struct ib_srq_init_attr srq_attr = { NULL, };
	struct ib_srq *srq;
	size_t srq_size;
	int ret, i;

	srq_size = 4095;	/* XXX: tune */

	srq_attr.attr.max_wr = srq_size;
	srq_attr.attr.max_sge = 1 + ndev->inline_page_count;
	srq_attr.attr.srq_limit = 0;
	srq_attr.srq_type = IB_SRQT_BASIC;
	srq = FUNC2(ndev->pd, &srq_attr);
	if (FUNC0(srq)) {
		/*
		 * If SRQs aren't supported we just go ahead and use normal
		 * non-shared receive queues.
		 */
		FUNC7("SRQ requested but not supported.\n");
		return 0;
	}

	ndev->srq_cmds = FUNC4(ndev, srq_size, false);
	if (FUNC0(ndev->srq_cmds)) {
		ret = FUNC1(ndev->srq_cmds);
		goto out_destroy_srq;
	}

	ndev->srq = srq;
	ndev->srq_size = srq_size;

	for (i = 0; i < srq_size; i++) {
		ret = FUNC6(ndev, &ndev->srq_cmds[i]);
		if (ret)
			goto out_free_cmds;
	}

	return 0;

out_free_cmds:
	FUNC5(ndev, ndev->srq_cmds, ndev->srq_size, false);
out_destroy_srq:
	FUNC3(srq);
	return ret;
}