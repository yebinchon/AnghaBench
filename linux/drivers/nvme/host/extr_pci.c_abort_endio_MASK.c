#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct request {int dummy; } ;
struct nvme_queue {TYPE_2__* dev; } ;
struct nvme_iod {struct nvme_queue* nvmeq; } ;
typedef  int /*<<< orphan*/  blk_status_t ;
struct TYPE_6__ {int /*<<< orphan*/  status; } ;
struct TYPE_4__ {int /*<<< orphan*/  abort_limit; int /*<<< orphan*/  device; } ;
struct TYPE_5__ {TYPE_1__ ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 struct nvme_iod* FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (struct request*) ; 

__attribute__((used)) static void FUNC5(struct request *req, blk_status_t error)
{
	struct nvme_iod *iod = FUNC2(req);
	struct nvme_queue *nvmeq = iod->nvmeq;

	FUNC3(nvmeq->dev->ctrl.device,
		 "Abort status: 0x%x", FUNC4(req)->status);
	FUNC0(&nvmeq->dev->ctrl.abort_limit);
	FUNC1(req);
}