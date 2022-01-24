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
struct winsize {int dummy; } ;
struct tty_struct {int /*<<< orphan*/  winsize_mutex; struct winsize winsize; } ;
struct pid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGWINCH ; 
 int /*<<< orphan*/  FUNC0 (struct pid*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct winsize*,struct winsize*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pid*) ; 
 struct pid* FUNC5 (struct tty_struct*) ; 

int FUNC6(struct tty_struct *tty, struct winsize *ws)
{
	struct pid *pgrp;

	/* Lock the tty */
	FUNC2(&tty->winsize_mutex);
	if (!FUNC1(ws, &tty->winsize, sizeof(*ws)))
		goto done;

	/* Signal the foreground process group */
	pgrp = FUNC5(tty);
	if (pgrp)
		FUNC0(pgrp, SIGWINCH, 1);
	FUNC4(pgrp);

	tty->winsize = *ws;
done:
	FUNC3(&tty->winsize_mutex);
	return 0;
}