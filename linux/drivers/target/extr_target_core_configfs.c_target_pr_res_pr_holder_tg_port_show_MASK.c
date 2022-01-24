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
struct target_core_fabric_ops {char* fabric_name; char* (* tpg_get_wwn ) (struct se_portal_group*) ;int /*<<< orphan*/  (* tpg_get_tag ) (struct se_portal_group*) ;} ;
struct t10_pr_registration {char* tg_pt_sep_rtpi; int /*<<< orphan*/  pr_aptpl_target_lun; struct se_node_acl* pr_reg_nacl; } ;
struct se_portal_group {struct target_core_fabric_ops* se_tpg_tfo; } ;
struct se_node_acl {struct se_portal_group* se_tpg; } ;
struct se_device {int /*<<< orphan*/  dev_reservation_lock; struct t10_pr_registration* dev_pr_res_holder; } ;
struct config_item {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct se_device* FUNC0 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,char*,...) ; 
 char* FUNC4 (struct se_portal_group*) ; 
 char* FUNC5 (struct se_portal_group*) ; 
 int /*<<< orphan*/  FUNC6 (struct se_portal_group*) ; 

__attribute__((used)) static ssize_t FUNC7(struct config_item *item,
		char *page)
{
	struct se_device *dev = FUNC0(item);
	struct se_node_acl *se_nacl;
	struct se_portal_group *se_tpg;
	struct t10_pr_registration *pr_reg;
	const struct target_core_fabric_ops *tfo;
	ssize_t len = 0;

	FUNC1(&dev->dev_reservation_lock);
	pr_reg = dev->dev_pr_res_holder;
	if (!pr_reg) {
		len = FUNC3(page, "No SPC-3 Reservation holder\n");
		goto out_unlock;
	}

	se_nacl = pr_reg->pr_reg_nacl;
	se_tpg = se_nacl->se_tpg;
	tfo = se_tpg->se_tpg_tfo;

	len += FUNC3(page+len, "SPC-3 Reservation: %s"
		" Target Node Endpoint: %s\n", tfo->fabric_name,
		tfo->tpg_get_wwn(se_tpg));
	len += FUNC3(page+len, "SPC-3 Reservation: Relative Port"
		" Identifier Tag: %hu %s Portal Group Tag: %hu"
		" %s Logical Unit: %llu\n", pr_reg->tg_pt_sep_rtpi,
		tfo->fabric_name, tfo->tpg_get_tag(se_tpg),
		tfo->fabric_name, pr_reg->pr_aptpl_target_lun);

out_unlock:
	FUNC2(&dev->dev_reservation_lock);
	return len;
}