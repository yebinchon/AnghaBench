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
struct iscsi_session {int dummy; } ;
struct iscsi_node_attrib {int nopin_response_timeout; } ;
struct iscsi_conn {int nopin_response_timer_flags; int /*<<< orphan*/  nopin_timer_lock; int /*<<< orphan*/  nopin_response_timer; struct iscsi_session* sess; } ;

/* Variables and functions */
 int HZ ; 
 int ISCSI_TF_RUNNING ; 
 scalar_t__ FUNC0 () ; 
 struct iscsi_node_attrib* FUNC1 (struct iscsi_session*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct iscsi_conn *conn)
{
	struct iscsi_session *sess = conn->sess;
	struct iscsi_node_attrib *na = FUNC1(sess);

	FUNC3(&conn->nopin_timer_lock);
	if (!(conn->nopin_response_timer_flags & ISCSI_TF_RUNNING)) {
		FUNC4(&conn->nopin_timer_lock);
		return;
	}

	FUNC2(&conn->nopin_response_timer,
		(FUNC0() + na->nopin_response_timeout * HZ));
	FUNC4(&conn->nopin_timer_lock);
}