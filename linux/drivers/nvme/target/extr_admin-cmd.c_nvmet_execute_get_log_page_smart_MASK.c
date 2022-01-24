#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct nvmet_req {int data_len; TYPE_4__* sq; TYPE_2__* cmd; } ;
struct nvme_smart_log {int /*<<< orphan*/  num_err_log_entries; } ;
struct TYPE_8__ {TYPE_3__* ctrl; } ;
struct TYPE_7__ {int /*<<< orphan*/  error_lock; int /*<<< orphan*/  err_counter; } ;
struct TYPE_5__ {scalar_t__ nsid; } ;
struct TYPE_6__ {TYPE_1__ get_log_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NVME_NSID_ALL ; 
 scalar_t__ NVME_SC_INTERNAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvme_smart_log*) ; 
 struct nvme_smart_log* FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct nvmet_req*,int /*<<< orphan*/ ,struct nvme_smart_log*,int) ; 
 scalar_t__ FUNC4 (struct nvmet_req*,struct nvme_smart_log*) ; 
 scalar_t__ FUNC5 (struct nvmet_req*,struct nvme_smart_log*) ; 
 int /*<<< orphan*/  FUNC6 (struct nvmet_req*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC10(struct nvmet_req *req)
{
	struct nvme_smart_log *log;
	u16 status = NVME_SC_INTERNAL;
	unsigned long flags;

	if (req->data_len != sizeof(*log))
		goto out;

	log = FUNC2(sizeof(*log), GFP_KERNEL);
	if (!log)
		goto out;

	if (req->cmd->get_log_page.nsid == FUNC0(NVME_NSID_ALL))
		status = FUNC4(req, log);
	else
		status = FUNC5(req, log);
	if (status)
		goto out_free_log;

	FUNC8(&req->sq->ctrl->error_lock, flags);
	FUNC7(req->sq->ctrl->err_counter,
			&log->num_err_log_entries);
	FUNC9(&req->sq->ctrl->error_lock, flags);

	status = FUNC3(req, 0, log, sizeof(*log));
out_free_log:
	FUNC1(log);
out:
	FUNC6(req, status);
}