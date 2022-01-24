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
struct iscsi_scsi_req {int dummy; } ;
struct iscsi_conn {int dummy; } ;
struct iscsi_cmd {int immediate_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISCSI_REASON_BOOKMARK_NO_RESOURCES ; 
 scalar_t__ FUNC0 (struct iscsi_cmd*) ; 
 int FUNC1 (struct iscsi_cmd*,struct iscsi_scsi_req*,int) ; 
 int FUNC2 (struct iscsi_conn*,struct iscsi_cmd*,struct iscsi_scsi_req*) ; 
 int FUNC3 (struct iscsi_cmd*,int /*<<< orphan*/ ,unsigned char*) ; 
 int FUNC4 (struct iscsi_conn*,struct iscsi_cmd*,unsigned char*) ; 

__attribute__((used)) static int
FUNC5(struct iscsi_conn *conn, struct iscsi_cmd *cmd,
			   unsigned char *buf)
{
	struct iscsi_scsi_req *hdr = (struct iscsi_scsi_req *)buf;
	int rc, immed_data;
	bool dump_payload = false;

	rc = FUNC4(conn, cmd, buf);
	if (rc < 0)
		return 0;
	/*
	 * Allocation iovecs needed for struct socket operations for
	 * traditional iSCSI block I/O.
	 */
	if (FUNC0(cmd) < 0) {
		return FUNC3(cmd,
				ISCSI_REASON_BOOKMARK_NO_RESOURCES, buf);
	}
	immed_data = cmd->immediate_data;

	rc = FUNC2(conn, cmd, hdr);
	if (rc < 0)
		return rc;
	else if (rc > 0)
		dump_payload = true;

	if (!immed_data)
		return 0;

	return FUNC1(cmd, hdr, dump_payload);
}