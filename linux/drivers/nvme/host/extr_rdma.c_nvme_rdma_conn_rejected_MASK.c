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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct rdma_cm_id {int dummy; } ;
struct rdma_cm_event {int status; } ;
struct nvme_rdma_queue {TYPE_2__* ctrl; struct rdma_cm_id* cm_id; } ;
struct nvme_rdma_cm_rej {int /*<<< orphan*/  sts; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;
struct TYPE_4__ {TYPE_1__ ctrl; } ;

/* Variables and functions */
 int ECONNRESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct nvme_rdma_cm_rej* FUNC3 (struct rdma_cm_id*,struct rdma_cm_event*,int*) ; 
 char* FUNC4 (struct rdma_cm_id*,int) ; 

__attribute__((used)) static int FUNC5(struct nvme_rdma_queue *queue,
		struct rdma_cm_event *ev)
{
	struct rdma_cm_id *cm_id = queue->cm_id;
	int status = ev->status;
	const char *rej_msg;
	const struct nvme_rdma_cm_rej *rej_data;
	u8 rej_data_len;

	rej_msg = FUNC4(cm_id, status);
	rej_data = FUNC3(cm_id, ev, &rej_data_len);

	if (rej_data && rej_data_len >= sizeof(u16)) {
		u16 sts = FUNC1(rej_data->sts);

		FUNC0(queue->ctrl->ctrl.device,
		      "Connect rejected: status %d (%s) nvme status %d (%s).\n",
		      status, rej_msg, sts, FUNC2(sts));
	} else {
		FUNC0(queue->ctrl->ctrl.device,
			"Connect rejected: status %d (%s).\n", status, rej_msg);
	}

	return -ECONNRESET;
}