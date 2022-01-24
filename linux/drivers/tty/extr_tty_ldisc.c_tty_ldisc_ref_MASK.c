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
struct tty_struct {int /*<<< orphan*/  ldisc_sem; struct tty_ldisc* ldisc; } ;
struct tty_ldisc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

struct tty_ldisc *FUNC2(struct tty_struct *tty)
{
	struct tty_ldisc *ld = NULL;

	if (FUNC0(&tty->ldisc_sem)) {
		ld = tty->ldisc;
		if (!ld)
			FUNC1(&tty->ldisc_sem);
	}
	return ld;
}