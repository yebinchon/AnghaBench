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
struct iscsi_session {int /*<<< orphan*/  sid; } ;
struct iscsi_conn_recovery {int /*<<< orphan*/  cid; int /*<<< orphan*/  conn_recovery_cmd_lock; } ;
struct iscsi_cmd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iscsi_conn_recovery*,struct iscsi_session*) ; 
 int FUNC1 (struct iscsi_cmd*,struct iscsi_session*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(
	struct iscsi_cmd *cmd,
	struct iscsi_conn_recovery *cr,
	struct iscsi_session *sess)
{
	int ret;

	FUNC3(&cr->conn_recovery_cmd_lock);
	ret = FUNC1(cmd, sess);
	FUNC4(&cr->conn_recovery_cmd_lock);
	if (!ret) {
		FUNC2("iSCSI connection recovery successful for CID:"
			" %hu on SID: %u\n", cr->cid, sess->sid);
		FUNC0(cr, sess);
	}
}