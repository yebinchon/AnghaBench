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
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int /*<<< orphan*/ * session; int /*<<< orphan*/  ctrl_lock; int /*<<< orphan*/ * pgrp; } ;
struct TYPE_9__ {TYPE_1__* signal; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int /*<<< orphan*/ * tty_old_pgrp; TYPE_2__* tty; } ;

/* Variables and functions */
 TYPE_4__* current ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC9(struct tty_struct *tty)
{
	unsigned long flags;

	FUNC2(&tty->ctrl_lock, flags);
	/*
	 * The session and fg pgrp references will be non-NULL if
	 * tiocsctty() is stealing the controlling tty
	 */
	FUNC1(tty->session);
	FUNC1(tty->pgrp);
	tty->pgrp = FUNC0(FUNC4(current));
	FUNC3(&tty->ctrl_lock, flags);
	tty->session = FUNC0(FUNC5(current));
	if (current->signal->tty) {
		FUNC6(tty, "current tty %s not NULL!!\n",
			  current->signal->tty->name);
		FUNC8(current->signal->tty);
	}
	FUNC1(current->signal->tty_old_pgrp);
	current->signal->tty = FUNC7(tty);
	current->signal->tty_old_pgrp = NULL;
}