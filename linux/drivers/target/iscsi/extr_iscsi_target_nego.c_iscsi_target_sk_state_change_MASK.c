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
struct sock {int /*<<< orphan*/  sk_callback_lock; struct iscsi_conn* sk_user_data; } ;
struct iscsi_conn {void (* orig_state_change ) (struct sock*) ;int /*<<< orphan*/  login_work; int /*<<< orphan*/  login_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOGIN_FLAGS_CLOSED ; 
 int /*<<< orphan*/  LOGIN_FLAGS_INITIAL_PDU ; 
 int /*<<< orphan*/  LOGIN_FLAGS_READY ; 
 int /*<<< orphan*/  LOGIN_FLAGS_READ_ACTIVE ; 
 int FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct sock *sk)
{
	struct iscsi_conn *conn;
	void (*orig_state_change)(struct sock *);
	bool state;

	FUNC1("Entering iscsi_target_sk_state_change\n");

	FUNC5(&sk->sk_callback_lock);
	conn = sk->sk_user_data;
	if (!conn) {
		FUNC6(&sk->sk_callback_lock);
		return;
	}
	orig_state_change = conn->orig_state_change;

	if (!FUNC4(LOGIN_FLAGS_READY, &conn->login_flags)) {
		FUNC1("Got LOGIN_FLAGS_READY=0 sk_state_change conn: %p\n",
			 conn);
		FUNC6(&sk->sk_callback_lock);
		orig_state_change(sk);
		return;
	}
	state = FUNC0(sk);
	FUNC1("__iscsi_target_sk_close_change: state: %d\n", state);

	if (FUNC4(LOGIN_FLAGS_READ_ACTIVE, &conn->login_flags)) {
		FUNC1("Got LOGIN_FLAGS_READ_ACTIVE=1 sk_state_change"
			 " conn: %p\n", conn);
		if (state)
			FUNC3(LOGIN_FLAGS_CLOSED, &conn->login_flags);
		FUNC6(&sk->sk_callback_lock);
		orig_state_change(sk);
		return;
	}
	if (FUNC4(LOGIN_FLAGS_CLOSED, &conn->login_flags)) {
		FUNC1("Got LOGIN_FLAGS_CLOSED=1 sk_state_change conn: %p\n",
			 conn);
		FUNC6(&sk->sk_callback_lock);
		orig_state_change(sk);
		return;
	}
	/*
	 * If the TCP connection has dropped, go ahead and set LOGIN_FLAGS_CLOSED,
	 * but only queue conn->login_work -> iscsi_target_do_login_rx()
	 * processing if LOGIN_FLAGS_INITIAL_PDU has already been cleared.
	 *
	 * When iscsi_target_do_login_rx() runs, iscsi_target_sk_check_close()
	 * will detect the dropped TCP connection from delayed workqueue context.
	 *
	 * If LOGIN_FLAGS_INITIAL_PDU is still set, which means the initial
	 * iscsi_target_start_negotiation() is running, iscsi_target_do_login()
	 * via iscsi_target_sk_check_close() or iscsi_target_start_negotiation()
	 * via iscsi_target_sk_check_and_clear() is responsible for detecting the
	 * dropped TCP connection in iscsi_np process context, and cleaning up
	 * the remaining iscsi connection resources.
	 */
	if (state) {
		FUNC1("iscsi_target_sk_state_change got failed state\n");
		FUNC3(LOGIN_FLAGS_CLOSED, &conn->login_flags);
		state = FUNC4(LOGIN_FLAGS_INITIAL_PDU, &conn->login_flags);
		FUNC6(&sk->sk_callback_lock);

		orig_state_change(sk);

		if (!state)
			FUNC2(&conn->login_work, 0);
		return;
	}
	FUNC6(&sk->sk_callback_lock);

	orig_state_change(sk);
}