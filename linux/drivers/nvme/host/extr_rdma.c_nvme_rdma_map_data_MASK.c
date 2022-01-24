#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct request {int /*<<< orphan*/  q; } ;
struct TYPE_9__ {int /*<<< orphan*/  sgl; } ;
struct nvme_rdma_request {int num_sge; TYPE_4__ sg_table; int /*<<< orphan*/  nents; int /*<<< orphan*/  first_sgl; int /*<<< orphan*/  ref; } ;
struct nvme_rdma_queue {TYPE_2__* ctrl; struct nvme_rdma_device* device; } ;
struct nvme_rdma_device {int num_inline_segments; TYPE_3__* pd; struct ib_device* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;
struct nvme_command {TYPE_1__ common; } ;
struct ib_device {int dummy; } ;
struct TYPE_8__ {int flags; } ;
struct TYPE_7__ {scalar_t__ use_inline_data; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int IB_PD_UNSAFE_GLOBAL_RKEY ; 
 int /*<<< orphan*/  NVME_CMD_SGL_METABUF ; 
 int /*<<< orphan*/  SG_CHUNK_SIZE ; 
 scalar_t__ WRITE ; 
 struct nvme_rdma_request* FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 scalar_t__ FUNC3 (struct request*) ; 
 int FUNC4 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct nvme_rdma_queue*) ; 
 int FUNC7 (struct nvme_rdma_queue*,struct nvme_rdma_request*,struct nvme_command*,int) ; 
 int FUNC8 (struct nvme_rdma_queue*,struct nvme_rdma_request*,struct nvme_command*,int) ; 
 int FUNC9 (struct nvme_rdma_queue*,struct nvme_rdma_request*,struct nvme_command*) ; 
 scalar_t__ FUNC10 (struct nvme_rdma_queue*) ; 
 int FUNC11 (struct nvme_command*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC13 (struct request*) ; 
 int /*<<< orphan*/  FUNC14 (struct request*) ; 
 int FUNC15 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static int FUNC18(struct nvme_rdma_queue *queue,
		struct request *rq, struct nvme_command *c)
{
	struct nvme_rdma_request *req = FUNC0(rq);
	struct nvme_rdma_device *dev = queue->device;
	struct ib_device *ibdev = dev->dev;
	int count, ret;

	req->num_sge = 1;
	FUNC12(&req->ref, 2); /* send and recv completions */

	c->common.flags |= NVME_CMD_SGL_METABUF;

	if (!FUNC2(rq))
		return FUNC11(c);

	req->sg_table.sgl = req->first_sgl;
	ret = FUNC15(&req->sg_table,
			FUNC2(rq), req->sg_table.sgl,
			SG_CHUNK_SIZE);
	if (ret)
		return -ENOMEM;

	req->nents = FUNC1(rq->q, rq, req->sg_table.sgl);

	count = FUNC4(ibdev, req->sg_table.sgl, req->nents,
			      FUNC14(rq));
	if (FUNC17(count <= 0)) {
		ret = -EIO;
		goto out_free_table;
	}

	if (count <= dev->num_inline_segments) {
		if (FUNC13(rq) == WRITE && FUNC10(queue) &&
		    queue->ctrl->use_inline_data &&
		    FUNC3(rq) <=
				FUNC6(queue)) {
			ret = FUNC8(queue, req, c, count);
			goto out;
		}

		if (count == 1 && dev->pd->flags & IB_PD_UNSAFE_GLOBAL_RKEY) {
			ret = FUNC9(queue, req, c);
			goto out;
		}
	}

	ret = FUNC7(queue, req, c, count);
out:
	if (FUNC17(ret))
		goto out_unmap_sg;

	return 0;

out_unmap_sg:
	FUNC5(ibdev, req->sg_table.sgl, req->nents, FUNC14(rq));
out_free_table:
	FUNC16(&req->sg_table, SG_CHUNK_SIZE);
	return ret;
}