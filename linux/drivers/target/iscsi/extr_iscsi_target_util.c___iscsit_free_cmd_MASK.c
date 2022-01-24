#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct iscsi_conn {TYPE_1__* conn_transport; } ;
struct iscsi_cmd {scalar_t__ data_direction; int /*<<< orphan*/  i_conn_node; struct iscsi_conn* conn; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* iscsit_unmap_cmd ) (struct iscsi_conn*,struct iscsi_cmd*) ;} ;

/* Variables and functions */
 scalar_t__ DMA_FROM_DEVICE ; 
 scalar_t__ DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_cmd*,struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC4 (struct iscsi_cmd*,struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC5 (struct iscsi_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct iscsi_conn*,struct iscsi_cmd*) ; 

void FUNC8(struct iscsi_cmd *cmd, bool check_queues)
{
	struct iscsi_conn *conn = cmd->conn;

	FUNC0(!FUNC6(&cmd->i_conn_node));

	if (cmd->data_direction == DMA_TO_DEVICE) {
		FUNC5(cmd);
		FUNC2(cmd);
	}
	if (cmd->data_direction == DMA_FROM_DEVICE)
		FUNC1(cmd);

	if (conn && check_queues) {
		FUNC3(cmd, conn);
		FUNC4(cmd, conn);
	}

	if (conn && conn->conn_transport->iscsit_unmap_cmd)
		conn->conn_transport->iscsit_unmap_cmd(conn, cmd);
}