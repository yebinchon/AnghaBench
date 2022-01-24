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
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  sk_callback_lock; struct nvmet_tcp_port* sk_user_data; } ;
struct nvmet_tcp_port {int /*<<< orphan*/  accept_work; } ;

/* Variables and functions */
 scalar_t__ TCP_LISTEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct sock *sk)
{
	struct nvmet_tcp_port *port;

	FUNC0(&sk->sk_callback_lock);
	port = sk->sk_user_data;
	if (!port)
		goto out;

	if (sk->sk_state == TCP_LISTEN)
		FUNC2(&port->accept_work);
out:
	FUNC1(&sk->sk_callback_lock);
}