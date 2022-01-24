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
struct timer_list {int dummy; } ;
struct iscsi_session {scalar_t__ state; int /*<<< orphan*/  frwd_lock; } ;
struct iscsi_conn {unsigned long recv_timeout; unsigned long last_recv; unsigned long ping_timeout; unsigned long last_ping; int /*<<< orphan*/  transport_timer; struct iscsi_session* session; } ;

/* Variables and functions */
 unsigned long HZ ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_conn*,char*,...) ; 
 int /*<<< orphan*/  ISCSI_ERR_NOP_TIMEDOUT ; 
 scalar_t__ ISCSI_STATE_LOGGED_IN ; 
 int /*<<< orphan*/  KERN_ERR ; 
 struct iscsi_conn* conn ; 
 struct iscsi_conn* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct iscsi_conn*,char*,unsigned long,unsigned long,unsigned long,unsigned long,int) ; 
 scalar_t__ FUNC4 (struct iscsi_conn*) ; 
 scalar_t__ FUNC5 (struct iscsi_conn*,int /*<<< orphan*/ *) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (unsigned long,int) ; 
 int /*<<< orphan*/  transport_timer ; 

__attribute__((used)) static void FUNC10(struct timer_list *t)
{
	struct iscsi_conn *conn = FUNC1(conn, t, transport_timer);
	struct iscsi_session *session = conn->session;
	unsigned long recv_timeout, next_timeout = 0, last_recv;

	FUNC7(&session->frwd_lock);
	if (session->state != ISCSI_STATE_LOGGED_IN)
		goto done;

	recv_timeout = conn->recv_timeout;
	if (!recv_timeout)
		goto done;

	recv_timeout *= HZ;
	last_recv = conn->last_recv;

	if (FUNC4(conn)) {
		FUNC3(KERN_ERR, conn, "ping timeout of %d secs "
				  "expired, recv timeout %d, last rx %lu, "
				  "last ping %lu, now %lu\n",
				  conn->ping_timeout, conn->recv_timeout,
				  last_recv, conn->last_ping, jiffies);
		FUNC8(&session->frwd_lock);
		FUNC2(conn, ISCSI_ERR_NOP_TIMEDOUT);
		return;
	}

	if (FUNC9(last_recv + recv_timeout, jiffies)) {
		/* send a ping to try to provoke some traffic */
		FUNC0(conn, "Sending nopout as ping\n");
		if (FUNC5(conn, NULL))
			next_timeout = jiffies + (1 * HZ);
		else
			next_timeout = conn->last_ping + (conn->ping_timeout * HZ);
	} else
		next_timeout = last_recv + recv_timeout;

	FUNC0(conn, "Setting next tmo %lu\n", next_timeout);
	FUNC6(&conn->transport_timer, next_timeout);
done:
	FUNC8(&session->frwd_lock);
}