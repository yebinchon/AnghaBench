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
struct se_lun {int /*<<< orphan*/  unpacked_lun; } ;
struct TYPE_2__ {int /*<<< orphan*/  fabric_name; int /*<<< orphan*/  (* tpg_get_tag ) (struct se_portal_group*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct se_portal_group*,struct se_lun*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct se_portal_group*) ; 

void FUNC3(
	struct se_portal_group *tpg,
	struct se_lun *lun)
{
	FUNC1("%s_TPG[%u]_LUN[%llu] - Deactivating %s Logical Unit from"
		" device object\n", tpg->se_tpg_tfo->fabric_name,
		tpg->se_tpg_tfo->tpg_get_tag(tpg), lun->unpacked_lun,
		tpg->se_tpg_tfo->fabric_name);

	FUNC0(tpg, lun);
}