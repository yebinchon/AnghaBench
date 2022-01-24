#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  sgl; } ;
struct nvme_rdma_request {TYPE_5__ sg_table; } ;
struct nvme_rdma_queue {TYPE_2__* device; } ;
struct nvme_keyed_sgl_desc {int type; int /*<<< orphan*/  key; int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;
struct TYPE_8__ {struct nvme_keyed_sgl_desc ksgl; } ;
struct TYPE_9__ {TYPE_3__ dptr; } ;
struct nvme_command {TYPE_4__ common; } ;
struct TYPE_7__ {TYPE_1__* pd; } ;
struct TYPE_6__ {int /*<<< orphan*/  unsafe_global_rkey; } ;

/* Variables and functions */
 int NVME_KEY_SGL_FMT_DATA_DESC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct nvme_rdma_queue *queue,
		struct nvme_rdma_request *req, struct nvme_command *c)
{
	struct nvme_keyed_sgl_desc *sg = &c->common.dptr.ksgl;

	sg->addr = FUNC0(FUNC3(req->sg_table.sgl));
	FUNC1(FUNC4(req->sg_table.sgl), sg->length);
	FUNC2(queue->device->pd->unsafe_global_rkey, sg->key);
	sg->type = NVME_KEY_SGL_FMT_DATA_DESC << 4;
	return 0;
}