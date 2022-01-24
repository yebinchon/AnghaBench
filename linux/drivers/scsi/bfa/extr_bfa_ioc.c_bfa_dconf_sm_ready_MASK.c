#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bfa_dconf_mod_s {TYPE_1__* bfa; int /*<<< orphan*/  timer; } ;
typedef  enum bfa_dconf_event { ____Placeholder_bfa_dconf_event } bfa_dconf_event ;
struct TYPE_4__ {int /*<<< orphan*/  iocfc; } ;

/* Variables and functions */
#define  BFA_DCONF_SM_EXIT 131 
#define  BFA_DCONF_SM_INIT 130 
#define  BFA_DCONF_SM_IOCDISABLE 129 
#define  BFA_DCONF_SM_WR 128 
 int /*<<< orphan*/  BFA_DCONF_UPDATE_TOV ; 
 int /*<<< orphan*/  IOCFC_E_DCONF_DONE ; 
 int /*<<< orphan*/  bfa_dconf_sm_dirty ; 
 int /*<<< orphan*/  bfa_dconf_sm_uninit ; 
 int /*<<< orphan*/  bfa_dconf_timer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_dconf_mod_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bfa_dconf_mod_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC5(struct bfa_dconf_mod_s *dconf, enum bfa_dconf_event event)
{
	FUNC4(dconf->bfa, event);

	switch (event) {
	case BFA_DCONF_SM_WR:
		FUNC3(dconf->bfa, &dconf->timer,
			bfa_dconf_timer, dconf, BFA_DCONF_UPDATE_TOV);
		FUNC2(dconf, bfa_dconf_sm_dirty);
		break;
	case BFA_DCONF_SM_EXIT:
		FUNC2(dconf, bfa_dconf_sm_uninit);
		FUNC0(&dconf->bfa->iocfc, IOCFC_E_DCONF_DONE);
		break;
	case BFA_DCONF_SM_INIT:
	case BFA_DCONF_SM_IOCDISABLE:
		break;
	default:
		FUNC1(dconf->bfa, event);
	}
}