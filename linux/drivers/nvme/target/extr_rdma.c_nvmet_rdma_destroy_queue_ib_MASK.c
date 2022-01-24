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
struct nvmet_rdma_queue {int /*<<< orphan*/  cq; TYPE_1__* cm_id; } ;
struct ib_qp {int dummy; } ;
struct TYPE_2__ {struct ib_qp* qp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(struct nvmet_rdma_queue *queue)
{
	struct ib_qp *qp = queue->cm_id->qp;

	FUNC1(qp);
	FUNC3(queue->cm_id);
	FUNC0(qp);
	FUNC2(queue->cq);
}