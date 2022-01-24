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
struct iscsi_conn {int /*<<< orphan*/  conn_transport; struct iscsi_conn* conn_ops; int /*<<< orphan*/  conn_cpumask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_conn*) ; 

void FUNC3(struct iscsi_conn *conn)
{
	FUNC0(conn->conn_cpumask);
	FUNC2(conn->conn_ops);
	FUNC1(conn->conn_transport);
	FUNC2(conn);
}