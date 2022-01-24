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
struct iscsi_conn {int nopin_timer_flags; int /*<<< orphan*/  nopin_timer_lock; } ;

/* Variables and functions */
 int ISCSI_TF_RUNNING ; 
 int ISCSI_TF_STOP ; 
 struct iscsi_conn* conn ; 
 struct iscsi_conn* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_conn*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  nopin_timer ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct timer_list *t)
{
	struct iscsi_conn *conn = FUNC0(conn, t, nopin_timer);

	FUNC3(conn);

	FUNC4(&conn->nopin_timer_lock);
	if (conn->nopin_timer_flags & ISCSI_TF_STOP) {
		FUNC5(&conn->nopin_timer_lock);
		FUNC2(conn);
		return;
	}
	conn->nopin_timer_flags &= ~ISCSI_TF_RUNNING;
	FUNC5(&conn->nopin_timer_lock);

	FUNC1(conn, 1);
	FUNC2(conn);
}