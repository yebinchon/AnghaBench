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
struct iscsi_tiqn {int /*<<< orphan*/  tiqn_tpg_lock; int /*<<< orphan*/  tiqn; int /*<<< orphan*/  tiqn_ntpgs; int /*<<< orphan*/  tiqn_tpg_list; } ;
struct TYPE_2__ {struct iscsi_portal_group* tpg; } ;
struct iscsi_portal_group {scalar_t__ tpg_state; int /*<<< orphan*/ * param_list; int /*<<< orphan*/  tpgt; int /*<<< orphan*/  tpg_list; int /*<<< orphan*/  tpg_state_lock; TYPE_1__ tpg_attrib; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 scalar_t__ TPG_STATE_FREE ; 
 scalar_t__ TPG_STATE_INACTIVE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_portal_group*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct iscsi_tiqn *tiqn, struct iscsi_portal_group *tpg)
{
	if (tpg->tpg_state != TPG_STATE_FREE) {
		FUNC5("Unable to add iSCSI Target Portal Group: %d"
			" while not in TPG_STATE_FREE state.\n", tpg->tpgt);
		return -EEXIST;
	}
	FUNC2(tpg);

	if (FUNC0(&tpg->param_list) < 0)
		goto err_out;

	tpg->tpg_attrib.tpg = tpg;

	FUNC6(&tpg->tpg_state_lock);
	tpg->tpg_state	= TPG_STATE_INACTIVE;
	FUNC7(&tpg->tpg_state_lock);

	FUNC6(&tiqn->tiqn_tpg_lock);
	FUNC3(&tpg->tpg_list, &tiqn->tiqn_tpg_list);
	tiqn->tiqn_ntpgs++;
	FUNC4("CORE[%s]_TPG[%hu] - Added iSCSI Target Portal Group\n",
			tiqn->tiqn, tpg->tpgt);
	FUNC7(&tiqn->tiqn_tpg_lock);

	return 0;
err_out:
	if (tpg->param_list) {
		FUNC1(tpg->param_list);
		tpg->param_list = NULL;
	}
	return -ENOMEM;
}