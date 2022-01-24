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
typedef  int /*<<< orphan*/  u64 ;
struct se_portal_group {int dummy; } ;
struct se_lun {struct se_portal_group* lun_tpg; int /*<<< orphan*/  lun_tg_pt_gp_lock; int /*<<< orphan*/  lun_tg_pt_gp_link; int /*<<< orphan*/  lun_tg_pt_md_mutex; int /*<<< orphan*/  lun_deve_lock; int /*<<< orphan*/  lun_tg_pt_secondary_offline; int /*<<< orphan*/  lun_dev_link; int /*<<< orphan*/  lun_deve_list; int /*<<< orphan*/  lun_shutdown_comp; int /*<<< orphan*/  lun_acl_count; int /*<<< orphan*/  unpacked_lun; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct se_lun* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct se_lun* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

struct se_lun *FUNC8(
	struct se_portal_group *tpg,
	u64 unpacked_lun)
{
	struct se_lun *lun;

	lun = FUNC4(sizeof(*lun), GFP_KERNEL);
	if (!lun) {
		FUNC6("Unable to allocate se_lun memory\n");
		return FUNC0(-ENOMEM);
	}
	lun->unpacked_lun = unpacked_lun;
	FUNC2(&lun->lun_acl_count, 0);
	FUNC3(&lun->lun_shutdown_comp);
	FUNC1(&lun->lun_deve_list);
	FUNC1(&lun->lun_dev_link);
	FUNC2(&lun->lun_tg_pt_secondary_offline, 0);
	FUNC7(&lun->lun_deve_lock);
	FUNC5(&lun->lun_tg_pt_md_mutex);
	FUNC1(&lun->lun_tg_pt_gp_link);
	FUNC7(&lun->lun_tg_pt_gp_lock);
	lun->lun_tpg = tpg;

	return lun;
}