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
struct se_cmd {scalar_t__ se_sess; scalar_t__ se_tfo; } ;
struct iscsi_cmd {int /*<<< orphan*/  i_conn_node; struct se_cmd se_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_cmd*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct se_cmd*) ; 
 int FUNC5 (struct se_cmd*,int) ; 

void FUNC6(struct iscsi_cmd *cmd, bool shutdown)
{
	struct se_cmd *se_cmd = cmd->se_cmd.se_tfo ? &cmd->se_cmd : NULL;
	int rc;

	FUNC0(!FUNC3(&cmd->i_conn_node));

	FUNC1(cmd, shutdown);
	if (se_cmd) {
		rc = FUNC5(se_cmd, shutdown);
		if (!rc && shutdown && se_cmd->se_sess) {
			FUNC1(cmd, shutdown);
			FUNC4(se_cmd);
		}
	} else {
		FUNC2(cmd);
	}
}