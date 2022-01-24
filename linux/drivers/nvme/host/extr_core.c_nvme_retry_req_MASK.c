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
typedef  int u16 ;
struct request {TYPE_3__* q; } ;
struct nvme_ns {TYPE_1__* ctrl; } ;
struct TYPE_6__ {struct nvme_ns* queuedata; } ;
struct TYPE_5__ {int status; int /*<<< orphan*/  retries; } ;
struct TYPE_4__ {int* crdt; } ;

/* Variables and functions */
 int NVME_SC_CRD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct request*,int) ; 
 TYPE_2__* FUNC2 (struct request*) ; 

__attribute__((used)) static void FUNC3(struct request *req)
{
	struct nvme_ns *ns = req->q->queuedata;
	unsigned long delay = 0;
	u16 crd;

	/* The mask and shift result must be <= 3 */
	crd = (FUNC2(req)->status & NVME_SC_CRD) >> 11;
	if (ns && crd)
		delay = ns->ctrl->crdt[crd - 1] * 100;

	FUNC2(req)->retries++;
	FUNC1(req, false);
	FUNC0(req->q, delay);
}