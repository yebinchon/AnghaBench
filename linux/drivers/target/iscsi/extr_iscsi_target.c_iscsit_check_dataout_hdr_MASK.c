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
typedef  int /*<<< orphan*/  u32 ;
struct iscsi_data {int /*<<< orphan*/  itt; int /*<<< orphan*/  dlength; } ;
struct iscsi_conn {TYPE_1__* conn_ops; } ;
struct iscsi_cmd {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  MaxXmitDataSegmentLength; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISCSI_REASON_PROTOCOL_ERROR ; 
 int FUNC0 (struct iscsi_conn*,void*,struct iscsi_cmd*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct iscsi_conn*,int /*<<< orphan*/ ,void*) ; 
 struct iscsi_cmd* FUNC2 (struct iscsi_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int
FUNC6(struct iscsi_conn *conn, void *buf,
			 struct iscsi_cmd **out_cmd)
{
	struct iscsi_data *hdr = buf;
	struct iscsi_cmd *cmd;
	u32 payload_length = FUNC3(hdr->dlength);
	int rc;
	bool success = false;

	if (!payload_length) {
		FUNC5("DataOUT payload is ZERO, ignoring.\n");
		return 0;
	}

	if (payload_length > conn->conn_ops->MaxXmitDataSegmentLength) {
		FUNC4("DataSegmentLength: %u is greater than"
			" MaxXmitDataSegmentLength: %u\n", payload_length,
			conn->conn_ops->MaxXmitDataSegmentLength);
		return FUNC1(conn, ISCSI_REASON_PROTOCOL_ERROR, buf);
	}

	cmd = FUNC2(conn, hdr->itt, payload_length);
	if (!cmd)
		return 0;

	rc = FUNC0(conn, buf, cmd, payload_length, &success);

	if (success)
		*out_cmd = cmd;

	return rc;
}