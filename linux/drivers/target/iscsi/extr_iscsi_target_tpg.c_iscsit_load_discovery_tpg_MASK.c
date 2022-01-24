#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * se_tpg_tfo; } ;
struct TYPE_5__ {scalar_t__ authentication; } ;
struct iscsi_portal_group {int sid; TYPE_3__ tpg_se_tpg; int /*<<< orphan*/  param_list; int /*<<< orphan*/  tpg_state_lock; int /*<<< orphan*/  tpg_state; TYPE_1__ tpg_attrib; } ;
struct iscsi_param {int dummy; } ;
struct TYPE_6__ {struct iscsi_portal_group* discovery_tpg; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTHMETHOD ; 
 int /*<<< orphan*/  TPG_STATE_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct iscsi_param* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iscsi_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct iscsi_param*,char*) ; 
 struct iscsi_portal_group* FUNC6 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* iscsit_global ; 
 int /*<<< orphan*/  FUNC7 (struct iscsi_portal_group*) ; 
 int /*<<< orphan*/  FUNC8 (struct iscsi_portal_group*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(void)
{
	struct iscsi_param *param;
	struct iscsi_portal_group *tpg;
	int ret;

	tpg = FUNC6(NULL, 1);
	if (!tpg) {
		FUNC10("Unable to allocate struct iscsi_portal_group\n");
		return -1;
	}
	/*
	 * Save iscsi_ops pointer for special case discovery TPG that
	 * doesn't exist as se_wwn->wwn_group within configfs.
	 */
	tpg->tpg_se_tpg.se_tpg_tfo = &iscsi_ops;
	ret = FUNC1(NULL, &tpg->tpg_se_tpg, -1);
	if (ret < 0) {
		FUNC8(tpg);
		return -1;
	}

	tpg->sid = 1; /* First Assigned LIO Session ID */
	FUNC7(tpg);

	if (FUNC2(&tpg->param_list) < 0)
		goto out;
	/*
	 * By default we disable authentication for discovery sessions,
	 * this can be changed with:
	 *
	 * /sys/kernel/config/target/iscsi/discovery_auth/enforce_discovery_auth
	 */
	param = FUNC3(AUTHMETHOD, tpg->param_list);
	if (!param)
		goto free_pl_out;

	if (FUNC5(param, "CHAP,None") < 0)
		goto free_pl_out;

	tpg->tpg_attrib.authentication = 0;

	FUNC11(&tpg->tpg_state_lock);
	tpg->tpg_state  = TPG_STATE_ACTIVE;
	FUNC12(&tpg->tpg_state_lock);

	iscsit_global->discovery_tpg = tpg;
	FUNC9("CORE[0] - Allocated Discovery TPG\n");

	return 0;
free_pl_out:
	FUNC4(tpg->param_list);
out:
	if (tpg->sid == 1)
		FUNC0(&tpg->tpg_se_tpg);
	FUNC8(tpg);
	return -1;
}