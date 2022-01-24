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
struct tty_struct {int /*<<< orphan*/  flags; } ;
struct tty_ldisc {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* open ) (struct tty_struct*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  TTY_LDISC_OPEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*,char*,struct tty_ldisc*) ; 

__attribute__((used)) static int FUNC5(struct tty_struct *tty, struct tty_ldisc *ld)
{
	FUNC0(FUNC3(TTY_LDISC_OPEN, &tty->flags));
	if (ld->ops->open) {
		int ret;
                /* BTM here locks versus a hangup event */
		ret = ld->ops->open(tty);
		if (ret)
			FUNC1(TTY_LDISC_OPEN, &tty->flags);

		FUNC4(tty, "%p: opened\n", ld);
		return ret;
	}
	return 0;
}