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
struct qedf_ctx {int num_queues; TYPE_1__* pdev; struct global_queue** global_queues; } ;
struct global_queue {int /*<<< orphan*/  cq_pbl_dma; scalar_t__ cq_pbl; int /*<<< orphan*/  cq_pbl_size; int /*<<< orphan*/  cq_dma; scalar_t__ cq; int /*<<< orphan*/  cq_mem_size; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct global_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct qedf_ctx*) ; 

__attribute__((used)) static void FUNC3(struct qedf_ctx *qedf)
{
	int i;
	struct global_queue **gl = qedf->global_queues;

	for (i = 0; i < qedf->num_queues; i++) {
		if (!gl[i])
			continue;

		if (gl[i]->cq)
			FUNC0(&qedf->pdev->dev,
			    gl[i]->cq_mem_size, gl[i]->cq, gl[i]->cq_dma);
		if (gl[i]->cq_pbl)
			FUNC0(&qedf->pdev->dev, gl[i]->cq_pbl_size,
			    gl[i]->cq_pbl, gl[i]->cq_pbl_dma);

		FUNC1(gl[i]);
	}

	FUNC2(qedf);
}