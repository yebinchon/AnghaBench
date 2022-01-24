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
struct nvme_rdma_queue {TYPE_1__* ctrl; } ;
struct TYPE_2__ {scalar_t__* io_queues; } ;

/* Variables and functions */
 size_t HCTX_TYPE_DEFAULT ; 
 size_t HCTX_TYPE_READ ; 
 scalar_t__ FUNC0 (struct nvme_rdma_queue*) ; 

__attribute__((used)) static bool FUNC1(struct nvme_rdma_queue *queue)
{
	return FUNC0(queue) >
		queue->ctrl->io_queues[HCTX_TYPE_DEFAULT] +
		queue->ctrl->io_queues[HCTX_TYPE_READ];
}