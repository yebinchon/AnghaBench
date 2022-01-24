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
struct se_portal_group {TYPE_1__* se_tpg_tfo; } ;
struct se_node_acl {int dynamic_node_acl; int /*<<< orphan*/  acl_kref; } ;
struct TYPE_2__ {int (* tpg_check_demo_mode_login_only ) (struct se_portal_group*) ;int /*<<< orphan*/  (* tpg_check_demo_mode ) (struct se_portal_group*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct se_node_acl*,struct se_portal_group*,int /*<<< orphan*/ *) ; 
 struct se_node_acl* FUNC1 (struct se_portal_group*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct se_portal_group*) ; 
 int FUNC4 (struct se_portal_group*) ; 
 int /*<<< orphan*/  FUNC5 (struct se_node_acl*) ; 
 struct se_node_acl* FUNC6 (struct se_portal_group*,unsigned char*) ; 

struct se_node_acl *FUNC7(
	struct se_portal_group *tpg,
	unsigned char *initiatorname)
{
	struct se_node_acl *acl;

	acl = FUNC1(tpg, initiatorname);
	if (acl)
		return acl;

	if (!tpg->se_tpg_tfo->tpg_check_demo_mode(tpg))
		return NULL;

	acl = FUNC6(tpg, initiatorname);
	if (!acl)
		return NULL;
	/*
	 * When allocating a dynamically generated node_acl, go ahead
	 * and take the extra kref now before returning to the fabric
	 * driver caller.
	 *
	 * Note this reference will be released at session shutdown
	 * time within transport_free_session() code.
	 */
	FUNC2(&acl->acl_kref);
	acl->dynamic_node_acl = 1;

	/*
	 * Here we only create demo-mode MappedLUNs from the active
	 * TPG LUNs if the fabric is not explicitly asking for
	 * tpg_check_demo_mode_login_only() == 1.
	 */
	if ((tpg->se_tpg_tfo->tpg_check_demo_mode_login_only == NULL) ||
	    (tpg->se_tpg_tfo->tpg_check_demo_mode_login_only(tpg) != 1))
		FUNC0(acl, tpg, NULL);

	FUNC5(acl);
	return acl;
}