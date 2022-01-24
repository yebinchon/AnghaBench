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
typedef  int /*<<< orphan*/  u16 ;
struct iscsi_tiqn {int dummy; } ;
struct iscsi_portal_group {int /*<<< orphan*/  tpg_np_lock; int /*<<< orphan*/  tpg_state_lock; int /*<<< orphan*/  np_login_sem; int /*<<< orphan*/  tpg_access_lock; int /*<<< orphan*/  tpg_list; int /*<<< orphan*/  tpg_gnp_list; struct iscsi_tiqn* tpg_tiqn; int /*<<< orphan*/  tpg_state; int /*<<< orphan*/  tpgt; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TPG_STATE_FREE ; 
 struct iscsi_portal_group* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct iscsi_portal_group *FUNC6(struct iscsi_tiqn *tiqn, u16 tpgt)
{
	struct iscsi_portal_group *tpg;

	tpg = FUNC1(sizeof(struct iscsi_portal_group), GFP_KERNEL);
	if (!tpg) {
		FUNC3("Unable to allocate struct iscsi_portal_group\n");
		return NULL;
	}

	tpg->tpgt = tpgt;
	tpg->tpg_state = TPG_STATE_FREE;
	tpg->tpg_tiqn = tiqn;
	FUNC0(&tpg->tpg_gnp_list);
	FUNC0(&tpg->tpg_list);
	FUNC2(&tpg->tpg_access_lock);
	FUNC4(&tpg->np_login_sem, 1);
	FUNC5(&tpg->tpg_state_lock);
	FUNC5(&tpg->tpg_np_lock);

	return tpg;
}