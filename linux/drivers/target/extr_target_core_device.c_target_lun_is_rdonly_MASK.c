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
struct se_session {int /*<<< orphan*/  se_node_acl; } ;
struct se_dev_entry {scalar_t__ lun_access_ro; } ;
struct se_cmd {int /*<<< orphan*/  orig_fe_lun; struct se_session* se_sess; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct se_dev_entry* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC3(struct se_cmd *cmd)
{
	struct se_session *se_sess = cmd->se_sess;
	struct se_dev_entry *deve;
	bool ret;

	FUNC0();
	deve = FUNC2(se_sess->se_node_acl, cmd->orig_fe_lun);
	ret = deve && deve->lun_access_ro;
	FUNC1();

	return ret;
}