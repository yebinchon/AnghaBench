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
struct iscsi_tm_rsp {int dummy; } ;
struct iscsi_conn {TYPE_1__* conn_transport; } ;
struct iscsi_cmd {int /*<<< orphan*/ * pdu; } ;
struct TYPE_2__ {int (* iscsit_xmit_pdu ) (struct iscsi_conn*,struct iscsi_cmd*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iscsi_cmd*,struct iscsi_conn*,struct iscsi_tm_rsp*) ; 
 int FUNC1 (struct iscsi_conn*,struct iscsi_cmd*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct iscsi_cmd *cmd, struct iscsi_conn *conn)
{
	struct iscsi_tm_rsp *hdr = (struct iscsi_tm_rsp *)&cmd->pdu[0];

	FUNC0(cmd, conn, hdr);

	return conn->conn_transport->iscsit_xmit_pdu(conn, cmd, NULL, NULL, 0);
}