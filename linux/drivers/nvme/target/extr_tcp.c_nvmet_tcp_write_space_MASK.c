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
struct sock {int /*<<< orphan*/  sk_callback_lock; TYPE_1__* sk_socket; struct nvmet_tcp_queue* sk_user_data; } ;
struct nvmet_tcp_queue {scalar_t__ state; int /*<<< orphan*/  io_work; int /*<<< orphan*/  cpu; int /*<<< orphan*/  (* write_space ) (struct sock*) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 scalar_t__ NVMET_TCP_Q_CONNECTING ; 
 int /*<<< orphan*/  SOCK_NOSPACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvmet_tcp_wq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct sock *sk)
{
	struct nvmet_tcp_queue *queue;

	FUNC2(&sk->sk_callback_lock);
	queue = sk->sk_user_data;
	if (FUNC6(!queue))
		goto out;

	if (FUNC6(queue->state == NVMET_TCP_Q_CONNECTING)) {
		queue->write_space(sk);
		goto out;
	}

	if (FUNC4(sk)) {
		FUNC0(SOCK_NOSPACE, &sk->sk_socket->flags);
		FUNC1(queue->cpu, nvmet_tcp_wq, &queue->io_work);
	}
out:
	FUNC3(&sk->sk_callback_lock);
}