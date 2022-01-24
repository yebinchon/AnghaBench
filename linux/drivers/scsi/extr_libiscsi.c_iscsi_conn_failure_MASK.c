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
struct iscsi_session {scalar_t__ state; int /*<<< orphan*/  frwd_lock; } ;
struct iscsi_conn {scalar_t__ stop_stage; int /*<<< orphan*/  cls_conn; int /*<<< orphan*/  suspend_rx; int /*<<< orphan*/  suspend_tx; struct iscsi_session* session; } ;
typedef  enum iscsi_err { ____Placeholder_iscsi_err } iscsi_err ;

/* Variables and functions */
 scalar_t__ ISCSI_STATE_FAILED ; 
 int /*<<< orphan*/  ISCSI_SUSPEND_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct iscsi_conn *conn, enum iscsi_err err)
{
	struct iscsi_session *session = conn->session;

	FUNC2(&session->frwd_lock);
	if (session->state == ISCSI_STATE_FAILED) {
		FUNC3(&session->frwd_lock);
		return;
	}

	if (conn->stop_stage == 0)
		session->state = ISCSI_STATE_FAILED;
	FUNC3(&session->frwd_lock);

	FUNC1(ISCSI_SUSPEND_BIT, &conn->suspend_tx);
	FUNC1(ISCSI_SUSPEND_BIT, &conn->suspend_rx);
	FUNC0(conn->cls_conn, err);
}