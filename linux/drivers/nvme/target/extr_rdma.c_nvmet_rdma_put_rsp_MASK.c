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
struct nvmet_rdma_rsp {TYPE_1__* queue; int /*<<< orphan*/  free_list; int /*<<< orphan*/  allocated; } ;
struct TYPE_2__ {int /*<<< orphan*/  rsps_lock; int /*<<< orphan*/  free_rsps; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvmet_rdma_rsp*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct nvmet_rdma_rsp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC6(struct nvmet_rdma_rsp *rsp)
{
	unsigned long flags;

	if (FUNC5(rsp->allocated)) {
		FUNC2(rsp->queue->dev, rsp);
		FUNC0(rsp);
		return;
	}

	FUNC3(&rsp->queue->rsps_lock, flags);
	FUNC1(&rsp->free_list, &rsp->queue->free_rsps);
	FUNC4(&rsp->queue->rsps_lock, flags);
}