#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int /*<<< orphan*/  ctrl_lock; struct pid* pgrp; struct pid* session; TYPE_1__* driver; } ;
struct pid {int dummy; } ;
struct TYPE_9__ {TYPE_3__* sighand; TYPE_2__* signal; } ;
struct TYPE_8__ {int /*<<< orphan*/  siglock; } ;
struct TYPE_7__ {int /*<<< orphan*/  tty; struct pid* tty_old_pgrp; int /*<<< orphan*/  leader; } ;
struct TYPE_6__ {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGCONT ; 
 int /*<<< orphan*/  SIGHUP ; 
 scalar_t__ TTY_DRIVER_TYPE_PTY ; 
 TYPE_4__* current ; 
 struct tty_struct* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct pid*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pid*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  tasklist_lock ; 
 struct pid* FUNC11 (struct tty_struct*) ; 
 struct tty_struct* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC14 (struct tty_struct*) ; 

void FUNC15(int on_exit)
{
	struct tty_struct *tty;

	if (!current->signal->leader)
		return;

	tty = FUNC0();
	if (tty) {
		if (on_exit && tty->driver->type != TTY_DRIVER_TYPE_PTY) {
			FUNC14(tty);
		} else {
			struct pid *tty_pgrp = FUNC11(tty);
			if (tty_pgrp) {
				FUNC1(tty_pgrp, SIGHUP, on_exit);
				if (!on_exit)
					FUNC1(tty_pgrp, SIGCONT, on_exit);
				FUNC2(tty_pgrp);
			}
		}
		FUNC13(tty);

	} else if (on_exit) {
		struct pid *old_pgrp;
		FUNC6(&current->sighand->siglock);
		old_pgrp = current->signal->tty_old_pgrp;
		current->signal->tty_old_pgrp = NULL;
		FUNC8(&current->sighand->siglock);
		if (old_pgrp) {
			FUNC1(old_pgrp, SIGHUP, on_exit);
			FUNC1(old_pgrp, SIGCONT, on_exit);
			FUNC2(old_pgrp);
		}
		return;
	}

	FUNC6(&current->sighand->siglock);
	FUNC2(current->signal->tty_old_pgrp);
	current->signal->tty_old_pgrp = NULL;

	tty = FUNC12(current->signal->tty);
	if (tty) {
		unsigned long flags;
		FUNC7(&tty->ctrl_lock, flags);
		FUNC2(tty->session);
		FUNC2(tty->pgrp);
		tty->session = NULL;
		tty->pgrp = NULL;
		FUNC9(&tty->ctrl_lock, flags);
		FUNC13(tty);
	}

	FUNC8(&current->sighand->siglock);
	/* Now clear signal->tty under the lock */
	FUNC3(&tasklist_lock);
	FUNC5(FUNC10(current));
	FUNC4(&tasklist_lock);
}