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
struct iscsi_conn {int nopin_response_timer_flags; int /*<<< orphan*/  nopin_timer_lock; int /*<<< orphan*/  nopin_response_timer; } ;

/* Variables and functions */
 int ISCSI_TF_RUNNING ; 
 int ISCSI_TF_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct iscsi_conn *conn)
{
	FUNC1(&conn->nopin_timer_lock);
	if (!(conn->nopin_response_timer_flags & ISCSI_TF_RUNNING)) {
		FUNC2(&conn->nopin_timer_lock);
		return;
	}
	conn->nopin_response_timer_flags |= ISCSI_TF_STOP;
	FUNC2(&conn->nopin_timer_lock);

	FUNC0(&conn->nopin_response_timer);

	FUNC1(&conn->nopin_timer_lock);
	conn->nopin_response_timer_flags &= ~ISCSI_TF_RUNNING;
	FUNC2(&conn->nopin_timer_lock);
}