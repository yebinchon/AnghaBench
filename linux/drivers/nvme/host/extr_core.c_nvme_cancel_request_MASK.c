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
struct request {int /*<<< orphan*/  tag; } ;
struct nvme_ctrl {int /*<<< orphan*/  device; } ;
struct TYPE_2__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_SC_HOST_PATH_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 scalar_t__ FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct request*) ; 

bool FUNC4(struct request *req, void *data, bool reserved)
{
	FUNC2(((struct nvme_ctrl *) data)->device,
				"Cancelling I/O %d", req->tag);

	/* don't abort one completed request */
	if (FUNC1(req))
		return true;

	FUNC3(req)->status = NVME_SC_HOST_PATH_ERROR;
	FUNC0(req);
	return true;
}