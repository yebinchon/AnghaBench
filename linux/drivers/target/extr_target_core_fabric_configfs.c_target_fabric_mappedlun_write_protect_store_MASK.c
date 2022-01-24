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
struct se_node_acl {int /*<<< orphan*/  initiatorname; struct se_portal_group* se_tpg; } ;
struct se_lun_acl {int /*<<< orphan*/  mapped_lun; struct se_node_acl* se_lun_nacl; } ;
struct config_item {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  fabric_name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long,struct se_node_acl*) ; 
 struct se_lun_acl* FUNC1 (struct config_item*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static ssize_t FUNC4(
		struct config_item *item, const char *page, size_t count)
{
	struct se_lun_acl *lacl = FUNC1(item);
	struct se_node_acl *se_nacl = lacl->se_lun_nacl;
	struct se_portal_group *se_tpg = se_nacl->se_tpg;
	unsigned long wp;
	int ret;

	ret = FUNC2(page, 0, &wp);
	if (ret)
		return ret;

	if ((wp != 1) && (wp != 0))
		return -EINVAL;

	/* wp=1 means lun_access_ro=true */
	FUNC0(lacl->mapped_lun, wp, lacl->se_lun_nacl);

	FUNC3("%s_ConfigFS: Changed Initiator ACL: %s"
		" Mapped LUN: %llu Write Protect bit to %s\n",
		se_tpg->se_tpg_tfo->fabric_name,
		se_nacl->initiatorname, lacl->mapped_lun, (wp) ? "ON" : "OFF");

	return count;

}