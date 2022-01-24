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
struct iscsi_conn {scalar_t__ conn_usage_count; int conn_waiting_on_uc; int /*<<< orphan*/  conn_usage_lock; int /*<<< orphan*/  conn_waiting_on_uc_comp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct iscsi_conn *conn)
{
	FUNC0(&conn->conn_usage_lock);
	if (conn->conn_usage_count != 0) {
		conn->conn_waiting_on_uc = 1;
		FUNC1(&conn->conn_usage_lock);

		FUNC2(&conn->conn_waiting_on_uc_comp);
		return;
	}
	FUNC1(&conn->conn_usage_lock);
}