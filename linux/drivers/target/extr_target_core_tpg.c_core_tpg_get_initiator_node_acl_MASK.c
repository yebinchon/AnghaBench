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
struct se_portal_group {int /*<<< orphan*/  acl_node_mutex; } ;
struct se_node_acl {int /*<<< orphan*/  acl_kref; } ;

/* Variables and functions */
 struct se_node_acl* FUNC0 (struct se_portal_group*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct se_node_acl *FUNC4(
	struct se_portal_group *tpg,
	unsigned char *initiatorname)
{
	struct se_node_acl *acl;
	/*
	 * Obtain se_node_acl->acl_kref using fabric driver provided
	 * initiatorname[] during node acl endpoint lookup driven by
	 * new se_session login.
	 *
	 * The reference is held until se_session shutdown -> release
	 * occurs via fabric driver invoked transport_deregister_session()
	 * or transport_free_session() code.
	 */
	FUNC2(&tpg->acl_node_mutex);
	acl = FUNC0(tpg, initiatorname);
	if (acl) {
		if (!FUNC1(&acl->acl_kref))
			acl = NULL;
	}
	FUNC3(&tpg->acl_node_mutex);

	return acl;
}