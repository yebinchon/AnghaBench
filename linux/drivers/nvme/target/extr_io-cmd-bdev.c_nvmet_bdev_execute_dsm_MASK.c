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
struct nvmet_req {TYPE_2__* cmd; } ;
struct TYPE_3__ {int /*<<< orphan*/  attributes; } ;
struct TYPE_4__ {TYPE_1__ dsm; } ;

/* Variables and functions */
#define  NVME_DSMGMT_AD 130 
#define  NVME_DSMGMT_IDR 129 
#define  NVME_DSMGMT_IDW 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvmet_req*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvmet_req*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct nvmet_req *req)
{
	switch (FUNC0(req->cmd->dsm.attributes)) {
	case NVME_DSMGMT_AD:
		FUNC1(req);
		return;
	case NVME_DSMGMT_IDR:
	case NVME_DSMGMT_IDW:
	default:
		/* Not supported yet */
		FUNC2(req, 0);
		return;
	}
}