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
struct socket {TYPE_1__* sk; } ;
struct nvmet_tcp_queue {int /*<<< orphan*/  write_space; int /*<<< orphan*/  state_change; int /*<<< orphan*/  data_ready; struct socket* sock; } ;
struct TYPE_2__ {int /*<<< orphan*/  sk_callback_lock; int /*<<< orphan*/ * sk_user_data; int /*<<< orphan*/  sk_write_space; int /*<<< orphan*/  sk_state_change; int /*<<< orphan*/  sk_data_ready; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct nvmet_tcp_queue *queue)
{
	struct socket *sock = queue->sock;

	FUNC0(&sock->sk->sk_callback_lock);
	sock->sk->sk_data_ready =  queue->data_ready;
	sock->sk->sk_state_change = queue->state_change;
	sock->sk->sk_write_space = queue->write_space;
	sock->sk->sk_user_data = NULL;
	FUNC1(&sock->sk->sk_callback_lock);
}