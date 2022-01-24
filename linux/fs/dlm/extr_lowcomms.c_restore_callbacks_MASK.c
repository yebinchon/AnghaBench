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
struct socket {struct sock* sk; } ;
struct sock {int /*<<< orphan*/  sk_callback_lock; int /*<<< orphan*/  sk_error_report; int /*<<< orphan*/  sk_write_space; int /*<<< orphan*/  sk_state_change; int /*<<< orphan*/  sk_data_ready; int /*<<< orphan*/ * sk_user_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  sk_error_report; int /*<<< orphan*/  sk_write_space; int /*<<< orphan*/  sk_state_change; int /*<<< orphan*/  sk_data_ready; } ;

/* Variables and functions */
 TYPE_1__ listen_sock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct socket *sock)
{
	struct sock *sk = sock->sk;

	FUNC0(&sk->sk_callback_lock);
	sk->sk_user_data = NULL;
	sk->sk_data_ready = listen_sock.sk_data_ready;
	sk->sk_state_change = listen_sock.sk_state_change;
	sk->sk_write_space = listen_sock.sk_write_space;
	sk->sk_error_report = listen_sock.sk_error_report;
	FUNC1(&sk->sk_callback_lock);
}