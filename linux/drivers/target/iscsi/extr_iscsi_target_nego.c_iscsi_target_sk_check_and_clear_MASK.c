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
struct sock {int /*<<< orphan*/  sk_callback_lock; } ;
struct iscsi_conn {int /*<<< orphan*/  login_flags; TYPE_1__* sock; } ;
struct TYPE_2__ {struct sock* sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOGIN_FLAGS_CLOSED ; 
 scalar_t__ FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC5(struct iscsi_conn *conn, unsigned int flag)
{
	bool state = false;

	if (conn->sock) {
		struct sock *sk = conn->sock->sk;

		FUNC3(&sk->sk_callback_lock);
		state = (FUNC0(sk) ||
			 FUNC2(LOGIN_FLAGS_CLOSED, &conn->login_flags));
		if (!state)
			FUNC1(flag, &conn->login_flags);
		FUNC4(&sk->sk_callback_lock);
	}
	return state;
}