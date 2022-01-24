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
struct tty_struct {int flow_stopped; int /*<<< orphan*/  flow_lock; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
#define  TCFLSH 133 
#define  TCIOFF 132 
#define  TCION 131 
#define  TCOOFF 130 
#define  TCOON 129 
#define  TCXONC 128 
 int /*<<< orphan*/  __DISABLED_CHAR ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 int FUNC4 (struct tty_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct tty_struct*) ; 
 int FUNC8 (struct tty_struct*,struct file*,unsigned int,unsigned long) ; 
 int FUNC9 (struct tty_struct*,int /*<<< orphan*/ ) ; 

int FUNC10(struct tty_struct *tty, struct file *file,
		       unsigned int cmd, unsigned long arg)
{
	int retval;

	switch (cmd) {
	case TCXONC:
		retval = FUNC7(tty);
		if (retval)
			return retval;
		switch (arg) {
		case TCOOFF:
			FUNC5(&tty->flow_lock);
			if (!tty->flow_stopped) {
				tty->flow_stopped = 1;
				FUNC3(tty);
			}
			FUNC6(&tty->flow_lock);
			break;
		case TCOON:
			FUNC5(&tty->flow_lock);
			if (tty->flow_stopped) {
				tty->flow_stopped = 0;
				FUNC2(tty);
			}
			FUNC6(&tty->flow_lock);
			break;
		case TCIOFF:
			if (FUNC1(tty) != __DISABLED_CHAR)
				retval = FUNC9(tty, FUNC1(tty));
			break;
		case TCION:
			if (FUNC0(tty) != __DISABLED_CHAR)
				retval = FUNC9(tty, FUNC0(tty));
			break;
		default:
			return -EINVAL;
		}
		return retval;
	case TCFLSH:
		retval = FUNC7(tty);
		if (retval)
			return retval;
		return FUNC4(tty, arg);
	default:
		/* Try the mode commands */
		return FUNC8(tty, file, cmd, arg);
	}
}