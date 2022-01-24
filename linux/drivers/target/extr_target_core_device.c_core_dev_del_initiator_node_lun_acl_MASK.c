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
struct se_node_acl {int /*<<< orphan*/  initiatorname; int /*<<< orphan*/  lun_entry_mutex; } ;
struct se_lun_acl {int /*<<< orphan*/  mapped_lun; struct se_node_acl* se_lun_nacl; } ;
struct se_lun {int /*<<< orphan*/  unpacked_lun; struct se_portal_group* lun_tpg; } ;
struct se_dev_entry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* tpg_get_tag ) (struct se_portal_group*) ;int /*<<< orphan*/  fabric_name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct se_lun*,struct se_dev_entry*,struct se_node_acl*,struct se_portal_group*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct se_portal_group*) ; 
 struct se_dev_entry* FUNC5 (struct se_node_acl*,int /*<<< orphan*/ ) ; 

int FUNC6(
	struct se_lun *lun,
	struct se_lun_acl *lacl)
{
	struct se_portal_group *tpg = lun->lun_tpg;
	struct se_node_acl *nacl;
	struct se_dev_entry *deve;

	nacl = lacl->se_lun_nacl;
	if (!nacl)
		return -EINVAL;

	FUNC1(&nacl->lun_entry_mutex);
	deve = FUNC5(nacl, lacl->mapped_lun);
	if (deve)
		FUNC0(lun, deve, nacl, tpg);
	FUNC2(&nacl->lun_entry_mutex);

	FUNC3("%s_TPG[%hu]_LUN[%llu] - Removed ACL for"
		" InitiatorNode: %s Mapped LUN: %llu\n",
		tpg->se_tpg_tfo->fabric_name,
		tpg->se_tpg_tfo->tpg_get_tag(tpg), lun->unpacked_lun,
		nacl->initiatorname, lacl->mapped_lun);

	return 0;
}