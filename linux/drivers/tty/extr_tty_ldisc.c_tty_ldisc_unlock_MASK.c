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
struct tty_struct {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTY_LDISC_CHANGING ; 
 int /*<<< orphan*/  TTY_LDISC_HALTED ; 
 int /*<<< orphan*/  FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(struct tty_struct *tty)
{
	FUNC1(TTY_LDISC_HALTED, &tty->flags);
	/* Can be cleared here - ldisc_unlock will wake up writers firstly */
	FUNC1(TTY_LDISC_CHANGING, &tty->flags);
	FUNC0(tty);
}