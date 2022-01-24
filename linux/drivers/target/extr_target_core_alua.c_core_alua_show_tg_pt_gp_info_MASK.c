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
struct config_item {int dummy; } ;
struct TYPE_2__ {struct config_item cg_item; } ;
struct t10_alua_tg_pt_gp {char* tg_pt_gp_id; int /*<<< orphan*/  tg_pt_gp_alua_access_status; int /*<<< orphan*/  tg_pt_gp_alua_access_state; TYPE_1__ tg_pt_gp_group; } ;
struct se_lun {int /*<<< orphan*/  lun_tg_pt_gp_lock; int /*<<< orphan*/  lun_tg_pt_secondary_stat; int /*<<< orphan*/  lun_tg_pt_secondary_offline; struct t10_alua_tg_pt_gp* lun_tg_pt_gp; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (struct config_item*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*,char*,char*,char*,char*,char*,char*,char*) ; 

ssize_t FUNC7(struct se_lun *lun, char *page)
{
	struct config_item *tg_pt_ci;
	struct t10_alua_tg_pt_gp *tg_pt_gp;
	ssize_t len = 0;

	FUNC4(&lun->lun_tg_pt_gp_lock);
	tg_pt_gp = lun->lun_tg_pt_gp;
	if (tg_pt_gp) {
		tg_pt_ci = &tg_pt_gp->tg_pt_gp_group.cg_item;
		len += FUNC6(page, "TG Port Alias: %s\nTG Port Group ID:"
			" %hu\nTG Port Primary Access State: %s\nTG Port "
			"Primary Access Status: %s\nTG Port Secondary Access"
			" State: %s\nTG Port Secondary Access Status: %s\n",
			FUNC1(tg_pt_ci), tg_pt_gp->tg_pt_gp_id,
			FUNC2(
				tg_pt_gp->tg_pt_gp_alua_access_state),
			FUNC3(
				tg_pt_gp->tg_pt_gp_alua_access_status),
			FUNC0(&lun->lun_tg_pt_secondary_offline) ?
			"Offline" : "None",
			FUNC3(lun->lun_tg_pt_secondary_stat));
	}
	FUNC5(&lun->lun_tg_pt_gp_lock);

	return len;
}