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
struct sock {int /*<<< orphan*/  sk_receive_queue; } ;
struct nvme_tcp_queue {int nr_cqe; TYPE_1__* sock; } ;
struct blk_mq_hw_ctx {struct nvme_tcp_queue* driver_data; } ;
struct TYPE_2__ {struct sock* sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvme_tcp_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int) ; 
 scalar_t__ FUNC2 (struct sock*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct blk_mq_hw_ctx *hctx)
{
	struct nvme_tcp_queue *queue = hctx->driver_data;
	struct sock *sk = queue->sock->sk;

	if (FUNC2(sk) && FUNC3(&sk->sk_receive_queue))
		FUNC1(sk, true);
	FUNC0(queue);
	return queue->nr_cqe;
}