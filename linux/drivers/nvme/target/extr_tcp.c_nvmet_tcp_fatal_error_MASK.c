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
struct TYPE_2__ {scalar_t__ ctrl; } ;
struct nvmet_tcp_queue {int /*<<< orphan*/  sock; TYPE_1__ nvme_sq; int /*<<< orphan*/  rcv_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVMET_TCP_RECV_ERR ; 
 int /*<<< orphan*/  SHUT_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct nvmet_tcp_queue *queue)
{
	queue->rcv_state = NVMET_TCP_RECV_ERR;
	if (queue->nvme_sq.ctrl)
		FUNC1(queue->nvme_sq.ctrl);
	else
		FUNC0(queue->sock, SHUT_RDWR);
}