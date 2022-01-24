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
struct se_portal_group {int /*<<< orphan*/  acl_node_mutex; TYPE_1__* se_tpg_tfo; } ;
struct se_node_acl {scalar_t__ dynamic_node_acl; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* tpg_get_tag ) (struct se_portal_group*) ;int /*<<< orphan*/  fabric_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct se_node_acl* FUNC0 (int /*<<< orphan*/ ) ; 
 struct se_node_acl* FUNC1 (struct se_portal_group*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct se_portal_group*) ; 
 int /*<<< orphan*/  FUNC7 (struct se_portal_group*) ; 
 int /*<<< orphan*/  FUNC8 (struct se_node_acl*) ; 
 struct se_node_acl* FUNC9 (struct se_portal_group*,char const*) ; 

struct se_node_acl *FUNC10(
	struct se_portal_group *tpg,
	const char *initiatorname)
{
	struct se_node_acl *acl;

	FUNC2(&tpg->acl_node_mutex);
	acl = FUNC1(tpg, initiatorname);
	if (acl) {
		if (acl->dynamic_node_acl) {
			acl->dynamic_node_acl = 0;
			FUNC4("%s_TPG[%u] - Replacing dynamic ACL"
				" for %s\n", tpg->se_tpg_tfo->fabric_name,
				tpg->se_tpg_tfo->tpg_get_tag(tpg), initiatorname);
			FUNC3(&tpg->acl_node_mutex);
			return acl;
		}

		FUNC5("ACL entry for %s Initiator"
			" Node %s already exists for TPG %u, ignoring"
			" request.\n",  tpg->se_tpg_tfo->fabric_name,
			initiatorname, tpg->se_tpg_tfo->tpg_get_tag(tpg));
		FUNC3(&tpg->acl_node_mutex);
		return FUNC0(-EEXIST);
	}
	FUNC3(&tpg->acl_node_mutex);

	acl = FUNC9(tpg, initiatorname);
	if (!acl)
		return FUNC0(-ENOMEM);

	FUNC8(acl);
	return acl;
}