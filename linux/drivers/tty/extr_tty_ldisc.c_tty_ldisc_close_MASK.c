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
struct tty_struct {int /*<<< orphan*/  flags; int /*<<< orphan*/  ldisc_sem; } ;
struct tty_ldisc {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* close ) (struct tty_struct*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  TTY_LDISC_OPEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*,char*,struct tty_ldisc*) ; 

__attribute__((used)) static void FUNC6(struct tty_struct *tty, struct tty_ldisc *ld)
{
	FUNC2(&tty->ldisc_sem);
	FUNC0(!FUNC4(TTY_LDISC_OPEN, &tty->flags));
	FUNC1(TTY_LDISC_OPEN, &tty->flags);
	if (ld->ops->close)
		ld->ops->close(tty);
	FUNC5(tty, "%p: closed\n", ld);
}