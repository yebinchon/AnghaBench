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
typedef  int u16 ;
struct request {TYPE_1__* q; } ;
struct nvme_ns {TYPE_2__* head; TYPE_3__* ctrl; int /*<<< orphan*/  flags; } ;
struct TYPE_8__ {int status; } ;
struct TYPE_7__ {int /*<<< orphan*/  ana_work; int /*<<< orphan*/  ana_log_buf; } ;
struct TYPE_6__ {int /*<<< orphan*/  requeue_work; int /*<<< orphan*/  requeue_lock; int /*<<< orphan*/  requeue_list; } ;
struct TYPE_5__ {struct nvme_ns* queuedata; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_NS_ANA_PENDING ; 
#define  NVME_SC_ANA_INACCESSIBLE 131 
#define  NVME_SC_ANA_PERSISTENT_LOSS 130 
#define  NVME_SC_ANA_TRANSITION 129 
#define  NVME_SC_HOST_PATH_ERROR 128 
 int /*<<< orphan*/  FUNC0 (struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_ns*) ; 
 TYPE_4__* FUNC4 (struct request*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  nvme_wq ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC10(struct request *req)
{
	struct nvme_ns *ns = req->q->queuedata;
	u16 status = FUNC4(req)->status;
	unsigned long flags;

	FUNC8(&ns->head->requeue_lock, flags);
	FUNC1(&ns->head->requeue_list, req);
	FUNC9(&ns->head->requeue_lock, flags);
	FUNC0(req, 0);

	switch (status & 0x7ff) {
	case NVME_SC_ANA_TRANSITION:
	case NVME_SC_ANA_INACCESSIBLE:
	case NVME_SC_ANA_PERSISTENT_LOSS:
		/*
		 * If we got back an ANA error we know the controller is alive,
		 * but not ready to serve this namespaces.  The spec suggests
		 * we should update our general state here, but due to the fact
		 * that the admin and I/O queues are not serialized that is
		 * fundamentally racy.  So instead just clear the current path,
		 * mark the the path as pending and kick of a re-read of the ANA
		 * log page ASAP.
		 */
		FUNC3(ns);
		if (ns->ctrl->ana_log_buf) {
			FUNC7(NVME_NS_ANA_PENDING, &ns->flags);
			FUNC6(nvme_wq, &ns->ctrl->ana_work);
		}
		break;
	case NVME_SC_HOST_PATH_ERROR:
		/*
		 * Temporary transport disruption in talking to the controller.
		 * Try to send on a new path.
		 */
		FUNC3(ns);
		break;
	default:
		/*
		 * Reset the controller for any non-ANA error as we don't know
		 * what caused the error.
		 */
		FUNC5(ns->ctrl);
		break;
	}

	FUNC2(&ns->head->requeue_work);
}