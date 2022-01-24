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
struct se_portal_group {TYPE_1__* se_tpg_tfo; int /*<<< orphan*/  acl_node_mutex; } ;
struct se_node_acl {int /*<<< orphan*/  initiatorname; int /*<<< orphan*/  queue_depth; int /*<<< orphan*/  acl_free_comp; int /*<<< orphan*/  acl_list; scalar_t__ dynamic_node_acl; struct se_portal_group* se_tpg; } ;
struct TYPE_2__ {int /*<<< orphan*/  fabric_name; int /*<<< orphan*/  (* tpg_get_tag ) (struct se_portal_group*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct se_node_acl*,struct se_portal_group*) ; 
 int /*<<< orphan*/  FUNC1 (struct se_node_acl*) ; 
 int /*<<< orphan*/  FUNC2 (struct se_node_acl*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct se_portal_group*) ; 
 int /*<<< orphan*/  FUNC8 (struct se_node_acl*) ; 
 int /*<<< orphan*/  FUNC9 (struct se_node_acl*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct se_node_acl *acl)
{
	struct se_portal_group *tpg = acl->se_tpg;

	FUNC4(&tpg->acl_node_mutex);
	if (acl->dynamic_node_acl)
		acl->dynamic_node_acl = 0;
	FUNC3(&acl->acl_list);
	FUNC5(&tpg->acl_node_mutex);

	FUNC9(acl);

	FUNC8(acl);
	/*
	 * Wait for last target_put_nacl() to complete in target_complete_nacl()
	 * for active fabric session transport_deregister_session() callbacks.
	 */
	FUNC10(&acl->acl_free_comp);

	FUNC1(acl);
	FUNC0(acl, tpg);

	FUNC6("%s_TPG[%hu] - Deleted ACL with TCQ Depth: %d for %s"
		" Initiator Node: %s\n", tpg->se_tpg_tfo->fabric_name,
		tpg->se_tpg_tfo->tpg_get_tag(tpg), acl->queue_depth,
		tpg->se_tpg_tfo->fabric_name, acl->initiatorname);

	FUNC2(acl);
}