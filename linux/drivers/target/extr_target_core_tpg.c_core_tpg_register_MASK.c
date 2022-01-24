#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct se_wwn {TYPE_1__* wwn_tf; } ;
struct se_portal_group {int proto_id; TYPE_2__* se_tpg_tfo; int /*<<< orphan*/  se_tpg_node; int /*<<< orphan*/  tpg_virt_lun0; int /*<<< orphan*/  acl_node_mutex; int /*<<< orphan*/  tpg_lun_mutex; int /*<<< orphan*/  session_lock; int /*<<< orphan*/  tpg_sess_list; int /*<<< orphan*/  acl_node_list; int /*<<< orphan*/  tpg_pr_ref_count; struct se_wwn* se_tpg_wwn; int /*<<< orphan*/  tpg_lun_hlist; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* tpg_get_tag ) (struct se_portal_group*) ;int /*<<< orphan*/ * (* tpg_get_wwn ) (struct se_portal_group*) ;int /*<<< orphan*/  fabric_name; } ;
struct TYPE_3__ {TYPE_2__* tf_ops; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct se_portal_group*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct se_portal_group*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_lun0_dev ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (struct se_portal_group*) ; 
 int /*<<< orphan*/ * FUNC16 (struct se_portal_group*) ; 
 int /*<<< orphan*/  FUNC17 (struct se_portal_group*) ; 
 int /*<<< orphan*/  tpg_list ; 
 int /*<<< orphan*/  tpg_lock ; 

int FUNC18(
	struct se_wwn *se_wwn,
	struct se_portal_group *se_tpg,
	int proto_id)
{
	int ret;

	if (!se_tpg)
		return -EINVAL;
	/*
	 * For the typical case where core_tpg_register() is called by a
	 * fabric driver from target_core_fabric_ops->fabric_make_tpg()
	 * configfs context, use the original tf_ops pointer already saved
	 * by target-core in target_fabric_make_wwn().
	 *
	 * Otherwise, for special cases like iscsi-target discovery TPGs
	 * the caller is responsible for setting ->se_tpg_tfo ahead of
	 * calling core_tpg_register().
	 */
	if (se_wwn)
		se_tpg->se_tpg_tfo = se_wwn->wwn_tf->tf_ops;

	if (!se_tpg->se_tpg_tfo) {
		FUNC11("Unable to locate se_tpg->se_tpg_tfo pointer\n");
		return -EINVAL;
	}

	FUNC0(&se_tpg->tpg_lun_hlist);
	se_tpg->proto_id = proto_id;
	se_tpg->se_tpg_wwn = se_wwn;
	FUNC4(&se_tpg->tpg_pr_ref_count, 0);
	FUNC1(&se_tpg->acl_node_list);
	FUNC1(&se_tpg->se_tpg_node);
	FUNC1(&se_tpg->tpg_sess_list);
	FUNC13(&se_tpg->session_lock);
	FUNC9(&se_tpg->tpg_lun_mutex);
	FUNC9(&se_tpg->acl_node_mutex);

	if (se_tpg->proto_id >= 0) {
		se_tpg->tpg_virt_lun0 = FUNC6(se_tpg, 0);
		if (FUNC2(se_tpg->tpg_virt_lun0))
			return FUNC3(se_tpg->tpg_virt_lun0);

		ret = FUNC5(se_tpg, se_tpg->tpg_virt_lun0,
				true, g_lun0_dev);
		if (ret < 0) {
			FUNC7(se_tpg->tpg_virt_lun0);
			return ret;
		}
	}

	FUNC12(&tpg_lock);
	FUNC8(&se_tpg->se_tpg_node, &tpg_list);
	FUNC14(&tpg_lock);

	FUNC10("TARGET_CORE[%s]: Allocated portal_group for endpoint: %s, "
		 "Proto: %d, Portal Tag: %u\n", se_tpg->se_tpg_tfo->fabric_name,
		se_tpg->se_tpg_tfo->tpg_get_wwn(se_tpg) ?
		se_tpg->se_tpg_tfo->tpg_get_wwn(se_tpg) : NULL,
		se_tpg->proto_id, se_tpg->se_tpg_tfo->tpg_get_tag(se_tpg));

	return 0;
}