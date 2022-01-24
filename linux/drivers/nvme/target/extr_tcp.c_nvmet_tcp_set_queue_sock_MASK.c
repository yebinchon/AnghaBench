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
typedef  int /*<<< orphan*/  tos ;
struct socket {TYPE_1__* sk; } ;
struct sockaddr {int dummy; } ;
struct nvmet_tcp_queue {int /*<<< orphan*/  write_space; int /*<<< orphan*/  state_change; int /*<<< orphan*/  data_ready; int /*<<< orphan*/  sockaddr_peer; int /*<<< orphan*/  sockaddr; struct socket* sock; } ;
struct linger {int l_onoff; int /*<<< orphan*/  l_linger; } ;
struct inet_sock {int rcv_tos; } ;
typedef  int /*<<< orphan*/  sol ;
struct TYPE_2__ {int /*<<< orphan*/  sk_callback_lock; int /*<<< orphan*/  sk_write_space; int /*<<< orphan*/  sk_state_change; int /*<<< orphan*/  sk_data_ready; struct nvmet_tcp_queue* sk_user_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  IP_TOS ; 
 int /*<<< orphan*/  SOL_IP ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_LINGER ; 
 struct inet_sock* FUNC0 (TYPE_1__*) ; 
 int FUNC1 (struct socket*,struct sockaddr*) ; 
 int FUNC2 (struct socket*,struct sockaddr*) ; 
 int FUNC3 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  nvmet_tcp_data_ready ; 
 int /*<<< orphan*/  nvmet_tcp_state_change ; 
 int /*<<< orphan*/  nvmet_tcp_write_space ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct nvmet_tcp_queue *queue)
{
	struct socket *sock = queue->sock;
	struct inet_sock *inet = FUNC0(sock->sk);
	struct linger sol = { .l_onoff = 1, .l_linger = 0 };
	int ret;

	ret = FUNC2(sock,
		(struct sockaddr *)&queue->sockaddr);
	if (ret < 0)
		return ret;

	ret = FUNC1(sock,
		(struct sockaddr *)&queue->sockaddr_peer);
	if (ret < 0)
		return ret;

	/*
	 * Cleanup whatever is sitting in the TCP transmit queue on socket
	 * close. This is done to prevent stale data from being sent should
	 * the network connection be restored before TCP times out.
	 */
	ret = FUNC3(sock, SOL_SOCKET, SO_LINGER,
			(char *)&sol, sizeof(sol));
	if (ret)
		return ret;

	/* Set socket type of service */
	if (inet->rcv_tos > 0) {
		int tos = inet->rcv_tos;

		ret = FUNC3(sock, SOL_IP, IP_TOS,
				(char *)&tos, sizeof(tos));
		if (ret)
			return ret;
	}

	FUNC4(&sock->sk->sk_callback_lock);
	sock->sk->sk_user_data = queue;
	queue->data_ready = sock->sk->sk_data_ready;
	sock->sk->sk_data_ready = nvmet_tcp_data_ready;
	queue->state_change = sock->sk->sk_state_change;
	sock->sk->sk_state_change = nvmet_tcp_state_change;
	queue->write_space = sock->sk->sk_write_space;
	sock->sk->sk_write_space = nvmet_tcp_write_space;
	FUNC5(&sock->sk->sk_callback_lock);

	return 0;
}