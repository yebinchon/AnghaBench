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
struct bfa_dconf_mod_s {int /*<<< orphan*/  bfa; int /*<<< orphan*/  timer; } ;
typedef  enum bfa_dconf_event { ____Placeholder_bfa_dconf_event } bfa_dconf_event ;

/* Variables and functions */
#define  BFA_DCONF_SM_EXIT 132 
#define  BFA_DCONF_SM_FLASH_COMP 131 
#define  BFA_DCONF_SM_IOCDISABLE 130 
#define  BFA_DCONF_SM_TIMEOUT 129 
#define  BFA_DCONF_SM_WR 128 
 int /*<<< orphan*/  BFA_DCONF_UPDATE_TOV ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_dconf_mod_s*) ; 
 int /*<<< orphan*/  bfa_dconf_sm_final_sync ; 
 int /*<<< orphan*/  bfa_dconf_sm_iocdown_dirty ; 
 int /*<<< orphan*/  bfa_dconf_sm_sync ; 
 int /*<<< orphan*/  bfa_dconf_timer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_dconf_mod_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bfa_dconf_mod_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct bfa_dconf_mod_s *dconf, enum bfa_dconf_event event)
{
	FUNC5(dconf->bfa, event);

	switch (event) {
	case BFA_DCONF_SM_TIMEOUT:
		FUNC2(dconf, bfa_dconf_sm_sync);
		FUNC0(dconf);
		break;
	case BFA_DCONF_SM_WR:
		FUNC4(&dconf->timer);
		FUNC3(dconf->bfa, &dconf->timer,
			bfa_dconf_timer, dconf, BFA_DCONF_UPDATE_TOV);
		break;
	case BFA_DCONF_SM_EXIT:
		FUNC4(&dconf->timer);
		FUNC3(dconf->bfa, &dconf->timer,
			bfa_dconf_timer, dconf, BFA_DCONF_UPDATE_TOV);
		FUNC2(dconf, bfa_dconf_sm_final_sync);
		FUNC0(dconf);
		break;
	case BFA_DCONF_SM_FLASH_COMP:
		break;
	case BFA_DCONF_SM_IOCDISABLE:
		FUNC4(&dconf->timer);
		FUNC2(dconf, bfa_dconf_sm_iocdown_dirty);
		break;
	default:
		FUNC1(dconf->bfa, event);
	}
}