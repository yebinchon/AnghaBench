#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int /*<<< orphan*/  ctrl_lock; struct pid* pgrp; } ;
struct pid {int dummy; } ;
struct TYPE_5__ {TYPE_1__* signal; } ;
struct TYPE_4__ {struct tty_struct* tty; } ;

/* Variables and functions */
 int EIO ; 
 int ERESTARTSYS ; 
 int SIGTTIN ; 
 int /*<<< orphan*/  TIF_SIGPENDING ; 
 TYPE_2__* current ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct pid*,int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 struct pid* FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (struct tty_struct*,char*,int) ; 

int FUNC10(struct tty_struct *tty, int sig)
{
	unsigned long flags;
	struct pid *pgrp, *tty_pgrp;
	int ret = 0;

	if (current->signal->tty != tty)
		return 0;

	FUNC3();
	pgrp = FUNC8(current);

	FUNC6(&tty->ctrl_lock, flags);
	tty_pgrp = tty->pgrp;
	FUNC7(&tty->ctrl_lock, flags);

	if (tty_pgrp && pgrp != tty_pgrp) {
		if (FUNC1(sig)) {
			if (sig == SIGTTIN)
				ret = -EIO;
		} else if (FUNC0())
			ret = -EIO;
		else {
			FUNC2(pgrp, sig, 1);
			FUNC5(TIF_SIGPENDING);
			ret = -ERESTARTSYS;
		}
	}
	FUNC4();

	if (!tty_pgrp)
		FUNC9(tty, "sig=%d, tty->pgrp == NULL!\n", sig);

	return ret;
}