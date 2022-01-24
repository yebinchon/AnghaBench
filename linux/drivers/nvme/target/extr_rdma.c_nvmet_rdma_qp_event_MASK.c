#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nvmet_rdma_queue {int /*<<< orphan*/  cm_id; } ;
struct ib_event {int event; } ;

/* Variables and functions */
#define  IB_EVENT_COMM_EST 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct ib_event *event, void *priv)
{
	struct nvmet_rdma_queue *queue = priv;

	switch (event->event) {
	case IB_EVENT_COMM_EST:
		FUNC2(queue->cm_id, event->event);
		break;
	default:
		FUNC1("received IB QP event: %s (%d)\n",
		       FUNC0(event->event), event->event);
		break;
	}
}