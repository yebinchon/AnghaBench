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
struct tty_struct {int /*<<< orphan*/ * ldisc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct tty_struct *tty)
{
	/* no ldisc_sem, tty is being destroyed */
	if (tty->ldisc)
		FUNC0(tty->ldisc);
	tty->ldisc = NULL;
}