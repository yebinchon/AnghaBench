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
struct iscsi_tiqn {int /*<<< orphan*/  tiqn_tpg_lock; int /*<<< orphan*/  tiqn_active_tpgs; } ;
struct TYPE_2__ {scalar_t__ authentication; } ;
struct iscsi_portal_group {scalar_t__ tpg_state; int /*<<< orphan*/  tpgt; int /*<<< orphan*/  tpg_state_lock; TYPE_1__ tpg_attrib; int /*<<< orphan*/  param_list; struct iscsi_tiqn* tpg_tiqn; } ;
struct iscsi_param {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTHMETHOD ; 
 int /*<<< orphan*/  CHAP ; 
 int EINVAL ; 
 int /*<<< orphan*/  NONE ; 
 scalar_t__ TPG_STATE_ACTIVE ; 
 struct iscsi_param* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct iscsi_param*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iscsi_portal_group*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(struct iscsi_portal_group *tpg)
{
	struct iscsi_param *param;
	struct iscsi_tiqn *tiqn = tpg->tpg_tiqn;
	int ret;

	if (tpg->tpg_state == TPG_STATE_ACTIVE) {
		FUNC4("iSCSI target portal group: %hu is already"
			" active, ignoring request.\n", tpg->tpgt);
		return -EINVAL;
	}
	/*
	 * Make sure that AuthMethod does not contain None as an option
	 * unless explictly disabled.  Set the default to CHAP if authentication
	 * is enforced (as per default), and remove the NONE option.
	 */
	param = FUNC0(AUTHMETHOD, tpg->param_list);
	if (!param)
		return -EINVAL;

	if (tpg->tpg_attrib.authentication) {
		if (!FUNC7(param->value, NONE)) {
			ret = FUNC1(param, CHAP);
			if (ret)
				goto err;
		}

		ret = FUNC2(tpg, 1);
		if (ret < 0)
			goto err;
	}

	FUNC5(&tpg->tpg_state_lock);
	tpg->tpg_state = TPG_STATE_ACTIVE;
	FUNC6(&tpg->tpg_state_lock);

	FUNC5(&tiqn->tiqn_tpg_lock);
	tiqn->tiqn_active_tpgs++;
	FUNC3("iSCSI_TPG[%hu] - Enabled iSCSI Target Portal Group\n",
			tpg->tpgt);
	FUNC6(&tiqn->tiqn_tpg_lock);

	return 0;

err:
	return ret;
}