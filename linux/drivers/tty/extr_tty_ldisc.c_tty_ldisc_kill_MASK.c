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
struct tty_struct {int /*<<< orphan*/ * ldisc; int /*<<< orphan*/  ldisc_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct tty_struct *tty)
{
	FUNC0(&tty->ldisc_sem);
	if (!tty->ldisc)
		return;
	/*
	 * Now kill off the ldisc
	 */
	FUNC1(tty, tty->ldisc);
	FUNC2(tty->ldisc);
	/* Force an oops if we mess this up */
	tty->ldisc = NULL;
}