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
struct se_portal_group {TYPE_1__* se_tpg_tfo; } ;
struct se_lun_acl {int /*<<< orphan*/  mapped_lun; TYPE_2__* se_lun_nacl; } ;
struct TYPE_4__ {int /*<<< orphan*/  initiatorname; } ;
struct TYPE_3__ {int /*<<< orphan*/  fabric_name; int /*<<< orphan*/  (* tpg_get_tag ) (struct se_portal_group*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct se_lun_acl*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct se_portal_group*) ; 

void FUNC3(
	struct se_portal_group *tpg,
	struct se_lun_acl *lacl)
{
	FUNC1("%s_TPG[%hu] - Freeing ACL for %s InitiatorNode: %s"
		" Mapped LUN: %llu\n", tpg->se_tpg_tfo->fabric_name,
		tpg->se_tpg_tfo->tpg_get_tag(tpg),
		tpg->se_tpg_tfo->fabric_name,
		lacl->se_lun_nacl->initiatorname, lacl->mapped_lun);

	FUNC0(lacl);
}