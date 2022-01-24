#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {scalar_t__ session; } ;
struct file {int f_mode; } ;
struct TYPE_5__ {TYPE_1__* signal; } ;
struct TYPE_4__ {scalar_t__ tty; scalar_t__ leader; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EPERM ; 
 int FMODE_READ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  tasklist_lock ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_struct*) ; 

__attribute__((used)) static int FUNC8(struct tty_struct *tty, struct file *file, int arg)
{
	int ret = 0;

	FUNC6(tty);
	FUNC2(&tasklist_lock);

	if (current->signal->leader && (FUNC5(current) == tty->session))
		goto unlock;

	/*
	 * The process must be a session leader and
	 * not have a controlling tty already.
	 */
	if (!current->signal->leader || current->signal->tty) {
		ret = -EPERM;
		goto unlock;
	}

	if (tty->session) {
		/*
		 * This tty is already the controlling
		 * tty for another session group!
		 */
		if (arg == 1 && FUNC0(CAP_SYS_ADMIN)) {
			/*
			 * Steal it away
			 */
			FUNC4(tty->session);
		} else {
			ret = -EPERM;
			goto unlock;
		}
	}

	/* See the comment in tty_open_proc_set_tty(). */
	if ((file->f_mode & FMODE_READ) == 0 && !FUNC0(CAP_SYS_ADMIN)) {
		ret = -EPERM;
		goto unlock;
	}

	FUNC1(tty);
unlock:
	FUNC3(&tasklist_lock);
	FUNC7(tty);
	return ret;
}