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
struct tty_struct {int /*<<< orphan*/  ctrl_lock; struct pid* pgrp; int /*<<< orphan*/  fasync; } ;
struct pid {int dummy; } ;
struct file {int dummy; } ;
typedef  enum pid_type { ____Placeholder_pid_type } pid_type ;

/* Variables and functions */
 int PIDTYPE_PGID ; 
 int PIDTYPE_TGID ; 
 int /*<<< orphan*/  FUNC0 (struct file*,struct pid*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int FUNC1 (int,struct file*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 struct tty_struct* FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct pid*) ; 
 int /*<<< orphan*/  FUNC5 (struct pid*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 struct pid* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct tty_struct*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC10(int fd, struct file *filp, int on)
{
	struct tty_struct *tty = FUNC3(filp);
	unsigned long flags;
	int retval = 0;

	if (FUNC9(tty, FUNC2(filp), "tty_fasync"))
		goto out;

	retval = FUNC1(fd, filp, on, &tty->fasync);
	if (retval <= 0)
		goto out;

	if (on) {
		enum pid_type type;
		struct pid *pid;

		FUNC6(&tty->ctrl_lock, flags);
		if (tty->pgrp) {
			pid = tty->pgrp;
			type = PIDTYPE_PGID;
		} else {
			pid = FUNC8(current);
			type = PIDTYPE_TGID;
		}
		FUNC4(pid);
		FUNC7(&tty->ctrl_lock, flags);
		FUNC0(filp, pid, type, 0);
		FUNC5(pid);
		retval = 0;
	}
out:
	return retval;
}