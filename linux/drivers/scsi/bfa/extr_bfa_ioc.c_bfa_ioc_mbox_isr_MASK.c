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
struct TYPE_4__ {int msg_class; } ;
struct bfi_mbmsg_s {TYPE_2__ mh; } ;
struct bfa_ioc_mbox_mod_s {TYPE_1__* mbhdlr; } ;
struct bfa_ioc_s {struct bfa_ioc_mbox_mod_s mbox_mod; } ;
struct TYPE_3__ {int /*<<< orphan*/  cbarg; int /*<<< orphan*/  (* cbfn ) (int /*<<< orphan*/ ,struct bfi_mbmsg_s*) ;} ;

/* Variables and functions */
 int BFI_MC_IOC ; 
 int BFI_MC_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_ioc_s*,struct bfi_mbmsg_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc_s*) ; 
 scalar_t__ FUNC3 (struct bfa_ioc_s*,struct bfi_mbmsg_s*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct bfi_mbmsg_s*) ; 

void
FUNC5(struct bfa_ioc_s *ioc)
{
	struct bfa_ioc_mbox_mod_s	*mod = &ioc->mbox_mod;
	struct bfi_mbmsg_s		m;
	int				mc;

	if (FUNC3(ioc, &m)) {
		/*
		 * Treat IOC message class as special.
		 */
		mc = m.mh.msg_class;
		if (mc == BFI_MC_IOC) {
			FUNC0(ioc, &m);
			return;
		}

		if ((mc >= BFI_MC_MAX) || (mod->mbhdlr[mc].cbfn == NULL))
			return;

		mod->mbhdlr[mc].cbfn(mod->mbhdlr[mc].cbarg, &m);
	}

	FUNC1(ioc);

	/*
	 * Try to send pending mailbox commands
	 */
	FUNC2(ioc);
}