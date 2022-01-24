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
struct se_portal_group {TYPE_1__* se_tpg_tfo; } ;
struct se_node_acl {int /*<<< orphan*/  initiatorname; int /*<<< orphan*/  queue_depth; struct se_portal_group* se_tpg; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* tpg_get_tag ) (struct se_portal_group*) ;int /*<<< orphan*/  fabric_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct se_portal_group*) ; 
 int /*<<< orphan*/  FUNC2 (struct se_portal_group*,struct se_node_acl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct se_node_acl*) ; 

int FUNC4(
	struct se_node_acl *acl,
	u32 queue_depth)
{
	struct se_portal_group *tpg = acl->se_tpg;

	/*
	 * Allow the setting of se_node_acl queue_depth to be idempotent,
	 * and not force a session shutdown event if the value is not
	 * changing.
	 */
	if (acl->queue_depth == queue_depth)
		return 0;
	/*
	 * User has requested to change the queue depth for a Initiator Node.
	 * Change the value in the Node's struct se_node_acl, and call
	 * target_set_nacl_queue_depth() to set the new queue depth.
	 */
	FUNC2(tpg, acl, queue_depth);

	/*
	 * Shutdown all pending sessions to force session reinstatement.
	 */
	FUNC3(acl);

	FUNC0("Successfully changed queue depth to: %d for Initiator"
		" Node: %s on %s Target Portal Group: %u\n", acl->queue_depth,
		acl->initiatorname, tpg->se_tpg_tfo->fabric_name,
		tpg->se_tpg_tfo->tpg_get_tag(tpg));

	return 0;
}