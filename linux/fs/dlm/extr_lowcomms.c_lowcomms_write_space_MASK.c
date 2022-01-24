#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock {int /*<<< orphan*/  sk_callback_lock; } ;
struct connection {int /*<<< orphan*/  swork; TYPE_2__* sock; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; TYPE_1__* sk; } ;
struct TYPE_3__ {int /*<<< orphan*/  sk_write_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  CF_APP_LIMITED ; 
 int /*<<< orphan*/  SOCKWQ_ASYNC_NOSPACE ; 
 int /*<<< orphan*/  SOCK_NOSPACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  send_workqueue ; 
 struct connection* FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct sock *sk)
{
	struct connection *con;

	FUNC2(&sk->sk_callback_lock);
	con = FUNC4(sk);
	if (!con)
		goto out;

	FUNC0(SOCK_NOSPACE, &con->sock->flags);

	if (FUNC5(CF_APP_LIMITED, &con->flags)) {
		con->sock->sk->sk_write_pending--;
		FUNC0(SOCKWQ_ASYNC_NOSPACE, &con->sock->flags);
	}

	FUNC1(send_workqueue, &con->swork);
out:
	FUNC3(&sk->sk_callback_lock);
}