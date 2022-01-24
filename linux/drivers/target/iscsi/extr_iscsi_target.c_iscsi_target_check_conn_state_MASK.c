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
struct iscsi_conn {scalar_t__ conn_state; int /*<<< orphan*/  state_lock; } ;

/* Variables and functions */
 scalar_t__ TARG_CONN_STATE_LOGGED_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(struct iscsi_conn *conn)
{
	bool ret;

	FUNC0(&conn->state_lock);
	ret = (conn->conn_state != TARG_CONN_STATE_LOGGED_IN);
	FUNC1(&conn->state_lock);

	return ret;
}