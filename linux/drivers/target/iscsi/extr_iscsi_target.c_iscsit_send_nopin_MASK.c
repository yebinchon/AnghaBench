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
struct iscsi_nopin {int dummy; } ;
struct iscsi_conn {TYPE_1__* conn_transport; } ;
struct iscsi_cmd {int /*<<< orphan*/  buf_ptr_size; int /*<<< orphan*/  buf_ptr; int /*<<< orphan*/ * pdu; } ;
struct TYPE_2__ {int (* iscsit_xmit_pdu ) (struct iscsi_conn*,struct iscsi_cmd*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iscsi_cmd*,struct iscsi_conn*,struct iscsi_nopin*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iscsi_conn*,struct iscsi_cmd*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct iscsi_cmd *cmd, struct iscsi_conn *conn)
{
	struct iscsi_nopin *hdr = (struct iscsi_nopin *)&cmd->pdu[0];

	FUNC0(cmd, conn, hdr, true);

	/*
	 * NOPOUT Ping Data is attached to struct iscsi_cmd->buf_ptr.
	 * NOPOUT DataSegmentLength is at struct iscsi_cmd->buf_ptr_size.
	 */
	FUNC1("Echoing back %u bytes of ping data.\n", cmd->buf_ptr_size);

	return conn->conn_transport->iscsit_xmit_pdu(conn, cmd, NULL,
						     cmd->buf_ptr,
						     cmd->buf_ptr_size);
}