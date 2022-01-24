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
struct se_portal_group {TYPE_1__* se_tpg_tfo; int /*<<< orphan*/  acl_node_mutex; int /*<<< orphan*/  acl_node_list; } ;
struct se_node_acl {int /*<<< orphan*/  initiatorname; int /*<<< orphan*/  queue_depth; scalar_t__ dynamic_node_acl; int /*<<< orphan*/  acl_list; struct se_portal_group* se_tpg; } ;
struct TYPE_2__ {int /*<<< orphan*/  fabric_name; int /*<<< orphan*/  (* tpg_get_tag ) (struct se_portal_group*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct se_portal_group*) ; 

__attribute__((used)) static void FUNC5(struct se_node_acl *acl)
{
	struct se_portal_group *tpg = acl->se_tpg;

	FUNC1(&tpg->acl_node_mutex);
	FUNC0(&acl->acl_list, &tpg->acl_node_list);
	FUNC2(&tpg->acl_node_mutex);

	FUNC3("%s_TPG[%hu] - Added %s ACL with TCQ Depth: %d for %s"
		" Initiator Node: %s\n",
		tpg->se_tpg_tfo->fabric_name,
		tpg->se_tpg_tfo->tpg_get_tag(tpg),
		acl->dynamic_node_acl ? "DYNAMIC" : "",
		acl->queue_depth,
		tpg->se_tpg_tfo->fabric_name,
		acl->initiatorname);
}