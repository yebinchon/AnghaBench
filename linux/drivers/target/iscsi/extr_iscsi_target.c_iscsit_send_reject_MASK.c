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
struct iscsi_reject {int /*<<< orphan*/  reason; int /*<<< orphan*/  statsn; } ;
struct iscsi_conn {TYPE_1__* conn_transport; int /*<<< orphan*/  cid; } ;
struct iscsi_cmd {int /*<<< orphan*/  buf_ptr; int /*<<< orphan*/ * pdu; } ;
struct TYPE_2__ {int (* iscsit_xmit_pdu ) (struct iscsi_conn*,struct iscsi_cmd*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ISCSI_HDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_cmd*,struct iscsi_conn*,struct iscsi_reject*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct iscsi_conn*,struct iscsi_cmd*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(
	struct iscsi_cmd *cmd,
	struct iscsi_conn *conn)
{
	struct iscsi_reject *hdr = (struct iscsi_reject *)&cmd->pdu[0];

	FUNC0(cmd, conn, hdr);

	FUNC2("Built Reject PDU StatSN: 0x%08x, Reason: 0x%02x,"
		" CID: %hu\n", FUNC1(hdr->statsn), hdr->reason, conn->cid);

	return conn->conn_transport->iscsit_xmit_pdu(conn, cmd, NULL,
						     cmd->buf_ptr,
						     ISCSI_HDR_LEN);
}