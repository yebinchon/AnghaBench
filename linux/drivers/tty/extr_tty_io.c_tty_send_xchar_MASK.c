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
struct tty_struct {int stopped; int /*<<< orphan*/  termios_rwsem; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* write ) (struct tty_struct*,char*,int) ;int /*<<< orphan*/  (* send_xchar ) (struct tty_struct*,char) ;} ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*,char*,int) ; 
 scalar_t__ FUNC5 (struct tty_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct tty_struct *tty, char ch)
{
	int	was_stopped = tty->stopped;

	if (tty->ops->send_xchar) {
		FUNC0(&tty->termios_rwsem);
		tty->ops->send_xchar(tty, ch);
		FUNC7(&tty->termios_rwsem);
		return 0;
	}

	if (FUNC5(tty, 0) < 0)
		return -ERESTARTSYS;

	FUNC0(&tty->termios_rwsem);
	if (was_stopped)
		FUNC1(tty);
	tty->ops->write(tty, &ch, 1);
	if (was_stopped)
		FUNC2(tty);
	FUNC7(&tty->termios_rwsem);
	FUNC6(tty);
	return 0;
}