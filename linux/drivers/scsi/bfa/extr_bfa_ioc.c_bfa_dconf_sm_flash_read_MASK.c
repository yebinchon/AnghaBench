#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bfa_dconf_mod_s {TYPE_1__* bfa; int /*<<< orphan*/  timer; } ;
typedef  enum bfa_dconf_event { ____Placeholder_bfa_dconf_event } bfa_dconf_event ;
struct TYPE_3__ {int /*<<< orphan*/  iocfc; int /*<<< orphan*/  ioc; } ;

/* Variables and functions */
#define  BFA_DCONF_SM_EXIT 131 
#define  BFA_DCONF_SM_FLASH_COMP 130 
#define  BFA_DCONF_SM_IOCDISABLE 129 
#define  BFA_DCONF_SM_TIMEOUT 128 
 int /*<<< orphan*/  IOCFC_E_DCONF_DONE ; 
 int /*<<< orphan*/  bfa_dconf_sm_ready ; 
 int /*<<< orphan*/  bfa_dconf_sm_uninit ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_dconf_mod_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC6(struct bfa_dconf_mod_s *dconf,
			enum bfa_dconf_event event)
{
	FUNC5(dconf->bfa, event);

	switch (event) {
	case BFA_DCONF_SM_FLASH_COMP:
		FUNC4(&dconf->timer);
		FUNC3(dconf, bfa_dconf_sm_ready);
		break;
	case BFA_DCONF_SM_TIMEOUT:
		FUNC3(dconf, bfa_dconf_sm_ready);
		FUNC1(&dconf->bfa->ioc);
		break;
	case BFA_DCONF_SM_EXIT:
		FUNC4(&dconf->timer);
		FUNC3(dconf, bfa_dconf_sm_uninit);
		FUNC0(&dconf->bfa->iocfc, IOCFC_E_DCONF_DONE);
		break;
	case BFA_DCONF_SM_IOCDISABLE:
		FUNC4(&dconf->timer);
		FUNC3(dconf, bfa_dconf_sm_uninit);
		break;
	default:
		FUNC2(dconf->bfa, event);
	}
}