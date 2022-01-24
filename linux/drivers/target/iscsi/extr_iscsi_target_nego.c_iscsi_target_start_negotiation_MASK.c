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
struct iscsi_login {int dummy; } ;
struct iscsi_conn {int /*<<< orphan*/  login_work; int /*<<< orphan*/  login_flags; TYPE_1__* sock; } ;
struct TYPE_2__ {struct sock* sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOGIN_FLAGS_INITIAL_PDU ; 
 int /*<<< orphan*/  LOGIN_FLAGS_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_conn*) ; 
 int FUNC2 (struct iscsi_conn*,struct iscsi_login*) ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC4 (struct iscsi_conn*) ; 
 scalar_t__ FUNC5 (struct iscsi_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(
	struct iscsi_login *login,
	struct iscsi_conn *conn)
{
	int ret;

	if (conn->sock) {
		struct sock *sk = conn->sock->sk;

		FUNC7(&sk->sk_callback_lock);
		FUNC6(LOGIN_FLAGS_READY, &conn->login_flags);
		FUNC6(LOGIN_FLAGS_INITIAL_PDU, &conn->login_flags);
		FUNC8(&sk->sk_callback_lock);
	}
	/*
	 * If iscsi_target_do_login returns zero to signal more PDU
	 * exchanges are required to complete the login, go ahead and
	 * clear LOGIN_FLAGS_INITIAL_PDU but only if the TCP connection
	 * is still active.
	 *
	 * Otherwise if TCP connection dropped asynchronously, go ahead
	 * and perform connection cleanup now.
	 */
	ret = FUNC2(conn, login);
	if (!ret && FUNC5(conn, LOGIN_FLAGS_INITIAL_PDU))
		ret = -1;

	if (ret < 0) {
		FUNC0(&conn->login_work);
		FUNC4(conn);
		FUNC1(conn);
	}
	if (ret != 0)
		FUNC3(conn);

	return ret;
}