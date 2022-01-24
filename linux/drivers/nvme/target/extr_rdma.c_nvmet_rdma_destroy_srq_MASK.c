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
struct nvmet_rdma_device {int /*<<< orphan*/  srq; int /*<<< orphan*/  srq_size; int /*<<< orphan*/  srq_cmds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvmet_rdma_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct nvmet_rdma_device *ndev)
{
	if (!ndev->srq)
		return;

	FUNC1(ndev, ndev->srq_cmds, ndev->srq_size, false);
	FUNC0(ndev->srq);
}