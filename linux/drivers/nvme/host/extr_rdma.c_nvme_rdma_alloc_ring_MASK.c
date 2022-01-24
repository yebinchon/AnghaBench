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
struct nvme_rdma_qe {int dummy; } ;
struct ib_device {int dummy; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct nvme_rdma_qe* FUNC0 (size_t,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ib_device*,struct nvme_rdma_qe*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_device*,struct nvme_rdma_qe*,int,size_t,int) ; 

__attribute__((used)) static struct nvme_rdma_qe *FUNC3(struct ib_device *ibdev,
		size_t ib_queue_size, size_t capsule_size,
		enum dma_data_direction dir)
{
	struct nvme_rdma_qe *ring;
	int i;

	ring = FUNC0(ib_queue_size, sizeof(struct nvme_rdma_qe), GFP_KERNEL);
	if (!ring)
		return NULL;

	/*
	 * Bind the CQEs (post recv buffers) DMA mapping to the RDMA queue
	 * lifetime. It's safe, since any chage in the underlying RDMA device
	 * will issue error recovery and queue re-creation.
	 */
	for (i = 0; i < ib_queue_size; i++) {
		if (FUNC1(ibdev, &ring[i], capsule_size, dir))
			goto out_free_ring;
	}

	return ring;

out_free_ring:
	FUNC2(ibdev, ring, i, capsule_size, dir);
	return NULL;
}