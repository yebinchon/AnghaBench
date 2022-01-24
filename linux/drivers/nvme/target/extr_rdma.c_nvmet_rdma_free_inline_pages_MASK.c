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
struct scatterlist {int dummy; } ;
struct nvmet_rdma_device {int inline_page_count; int /*<<< orphan*/  device; int /*<<< orphan*/  inline_data_size; } ;
struct nvmet_rdma_cmd {struct ib_sge* sge; struct scatterlist* inline_sg; } ;
struct ib_sge {scalar_t__ length; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct scatterlist*) ; 

__attribute__((used)) static void FUNC3(struct nvmet_rdma_device *ndev,
				struct nvmet_rdma_cmd *c)
{
	struct scatterlist *sg;
	struct ib_sge *sge;
	int i;

	if (!ndev->inline_data_size)
		return;

	sg = c->inline_sg;
	sge = &c->sge[1];

	for (i = 0; i < ndev->inline_page_count; i++, sg++, sge++) {
		if (sge->length)
			FUNC1(ndev->device, sge->addr,
					sge->length, DMA_FROM_DEVICE);
		if (FUNC2(sg))
			FUNC0(FUNC2(sg));
	}
}