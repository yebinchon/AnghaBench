#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {TYPE_2__* ops; int /*<<< orphan*/  flags; TYPE_1__* link; scalar_t__ packet; int /*<<< orphan*/  port; int /*<<< orphan*/  write_wait; int /*<<< orphan*/  read_wait; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;
struct TYPE_4__ {scalar_t__ write; } ;
struct TYPE_3__ {scalar_t__ ctrl_status; } ;

/* Variables and functions */
 int EPOLLHUP ; 
 int EPOLLIN ; 
 int EPOLLOUT ; 
 int EPOLLPRI ; 
 int EPOLLRDNORM ; 
 int EPOLLWRNORM ; 
 int /*<<< orphan*/  TTY_OTHER_CLOSED ; 
 scalar_t__ WAKEUP_CHARS ; 
 scalar_t__ FUNC0 (struct tty_struct*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct tty_struct*) ; 
 scalar_t__ FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*) ; 
 scalar_t__ FUNC7 (struct tty_struct*) ; 

__attribute__((used)) static __poll_t FUNC8(struct tty_struct *tty, struct file *file,
							poll_table *wait)
{
	__poll_t mask = 0;

	FUNC1(file, &tty->read_wait, wait);
	FUNC1(file, &tty->write_wait, wait);
	if (FUNC0(tty, 1))
		mask |= EPOLLIN | EPOLLRDNORM;
	else {
		FUNC3(tty->port);
		if (FUNC0(tty, 1))
			mask |= EPOLLIN | EPOLLRDNORM;
	}
	if (tty->packet && tty->link->ctrl_status)
		mask |= EPOLLPRI | EPOLLIN | EPOLLRDNORM;
	if (FUNC2(TTY_OTHER_CLOSED, &tty->flags))
		mask |= EPOLLHUP;
	if (FUNC5(file))
		mask |= EPOLLHUP;
	if (tty->ops->write && !FUNC6(tty) &&
			FUNC4(tty) < WAKEUP_CHARS &&
			FUNC7(tty) > 0)
		mask |= EPOLLOUT | EPOLLWRNORM;
	return mask;
}