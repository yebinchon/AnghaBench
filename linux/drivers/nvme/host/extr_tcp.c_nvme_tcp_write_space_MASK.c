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
struct sock {int /*<<< orphan*/  sk_callback_lock; TYPE_1__* sk_socket; struct nvme_tcp_queue* sk_user_data; } ;
struct nvme_tcp_queue {int /*<<< orphan*/  io_work; int /*<<< orphan*/  io_cpu; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_NOSPACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  nvme_tcp_wq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct sock*) ; 

__attribute__((used)) static void FUNC6(struct sock *sk)
{
	struct nvme_tcp_queue *queue;

	FUNC3(&sk->sk_callback_lock);
	queue = sk->sk_user_data;
	if (FUNC1(queue && FUNC5(sk))) {
		FUNC0(SOCK_NOSPACE, &sk->sk_socket->flags);
		FUNC2(queue->io_cpu, nvme_tcp_wq, &queue->io_work);
	}
	FUNC4(&sk->sk_callback_lock);
}