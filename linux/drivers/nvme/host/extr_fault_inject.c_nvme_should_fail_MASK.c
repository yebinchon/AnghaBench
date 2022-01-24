#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct request {struct gendisk* rq_disk; } ;
struct nvme_fault_inject {scalar_t__ dont_retry; int /*<<< orphan*/  status; int /*<<< orphan*/  attr; } ;
struct nvme_ns {struct nvme_fault_inject fault_inject; } ;
struct gendisk {struct nvme_ns* private_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  status; TYPE_1__* ctrl; } ;
struct TYPE_3__ {struct nvme_fault_inject fault_inject; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_SC_DNR ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 TYPE_2__* FUNC1 (struct request*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 

void FUNC3(struct request *req)
{
	struct gendisk *disk = req->rq_disk;
	struct nvme_fault_inject *fault_inject = NULL;
	u16 status;

	if (disk) {
		struct nvme_ns *ns = disk->private_data;

		if (ns)
			fault_inject = &ns->fault_inject;
		else
			FUNC0(1, "No namespace found for request\n");
	} else {
		fault_inject = &FUNC1(req)->ctrl->fault_inject;
	}

	if (fault_inject && FUNC2(&fault_inject->attr, 1)) {
		/* inject status code and DNR bit */
		status = fault_inject->status;
		if (fault_inject->dont_retry)
			status |= NVME_SC_DNR;
		FUNC1(req)->status =	status;
	}
}