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
struct se_portal_group {int dummy; } ;
struct se_node_acl {int /*<<< orphan*/  lun_entry_mutex; } ;
struct se_lun {int /*<<< orphan*/  lun_deve_lock; int /*<<< orphan*/  lun_se_dev; } ;
struct se_device {int dummy; } ;
struct se_dev_entry {int lun_access_ro; int /*<<< orphan*/  se_lun_acl; int /*<<< orphan*/  se_lun; int /*<<< orphan*/  pr_comp; int /*<<< orphan*/  pr_kref; int /*<<< orphan*/  attach_count; scalar_t__ creation_time; int /*<<< orphan*/  deve_flags; int /*<<< orphan*/  link; int /*<<< orphan*/  lun_link; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEF_PR_REG_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct se_device*,struct se_node_acl*) ; 
 int /*<<< orphan*/  FUNC2 (struct se_dev_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct se_dev_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct se_device* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu_head ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct se_node_acl*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  target_pr_kref_release ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

void FUNC14(
	struct se_lun *lun,
	struct se_dev_entry *orig,
	struct se_node_acl *nacl,
	struct se_portal_group *tpg)
{
	/*
	 * rcu_dereference_raw protected by se_lun->lun_group symlink
	 * reference to se_device->dev_group.
	 */
	struct se_device *dev = FUNC9(lun->lun_se_dev);

	FUNC7(&nacl->lun_entry_mutex);

	/*
	 * If the MappedLUN entry is being disabled, the entry in
	 * lun->lun_deve_list must be removed now before clearing the
	 * struct se_dev_entry pointers below as logic in
	 * core_alua_do_transition_tg_pt() depends on these being present.
	 *
	 * deve->se_lun_acl will be NULL for demo-mode created LUNs
	 * that have not been explicitly converted to MappedLUNs ->
	 * struct se_lun_acl, but we remove deve->lun_link from
	 * lun->lun_deve_list. This also means that active UAs and
	 * NodeACL context specific PR metadata for demo-mode
	 * MappedLUN *deve will be released below..
	 */
	FUNC10(&lun->lun_deve_lock);
	FUNC6(&orig->lun_link);
	FUNC11(&lun->lun_deve_lock);
	/*
	 * Disable struct se_dev_entry LUN ACL mapping
	 */
	FUNC2(orig);

	FUNC3(&orig->link);
	FUNC0(DEF_PR_REG_ACTIVE, &orig->deve_flags);
	orig->lun_access_ro = false;
	orig->creation_time = 0;
	orig->attach_count--;
	/*
	 * Before firing off RCU callback, wait for any in process SPEC_I_PT=1
	 * or REGISTER_AND_MOVE PR operation to complete.
	 */
	FUNC5(&orig->pr_kref, target_pr_kref_release);
	FUNC13(&orig->pr_comp);

	FUNC8(orig->se_lun, NULL);
	FUNC8(orig->se_lun_acl, NULL);

	FUNC4(orig, rcu_head);

	FUNC1(dev, nacl);
	FUNC12(nacl, NULL, false);
}