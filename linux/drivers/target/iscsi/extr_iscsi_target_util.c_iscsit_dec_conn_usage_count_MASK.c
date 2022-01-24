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
struct iscsi_conn {int /*<<< orphan*/  conn_usage_lock; int /*<<< orphan*/  conn_waiting_on_uc_comp; scalar_t__ conn_waiting_on_uc; int /*<<< orphan*/  conn_usage_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct iscsi_conn *conn)
{
	FUNC1(&conn->conn_usage_lock);
	conn->conn_usage_count--;

	if (!conn->conn_usage_count && conn->conn_waiting_on_uc)
		FUNC0(&conn->conn_waiting_on_uc_comp);

	FUNC2(&conn->conn_usage_lock);
}