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
struct tty_struct {int /*<<< orphan*/  termios_rwsem; scalar_t__ link; struct n_tty_data* disc_data; } ;
struct n_tty_data {int /*<<< orphan*/  output_lock; scalar_t__ echo_commit; scalar_t__ echo_mark; scalar_t__ echo_tail; scalar_t__ echo_head; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct n_tty_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(int sig, struct tty_struct *tty)
{
	struct n_tty_data *ldata = tty->disc_data;

	if (FUNC0(tty)) {
		/* signal only */
		FUNC1(sig, tty);

	} else { /* signal and flush */
		FUNC9(&tty->termios_rwsem);
		FUNC3(&tty->termios_rwsem);

		FUNC1(sig, tty);

		/* clear echo buffer */
		FUNC4(&ldata->output_lock);
		ldata->echo_head = ldata->echo_tail = 0;
		ldata->echo_mark = ldata->echo_commit = 0;
		FUNC5(&ldata->output_lock);

		/* clear output buffer */
		FUNC8(tty);

		/* clear input buffer */
		FUNC7(tty->disc_data);

		/* notify pty master of flush */
		if (tty->link)
			FUNC6(tty);

		FUNC10(&tty->termios_rwsem);
		FUNC2(&tty->termios_rwsem);
	}
}