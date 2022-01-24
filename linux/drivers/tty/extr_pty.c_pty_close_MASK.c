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
struct tty_struct {int count; TYPE_1__* link; TYPE_2__* driver; int /*<<< orphan*/  flags; int /*<<< orphan*/  ctrl_lock; scalar_t__ packet; int /*<<< orphan*/  write_wait; int /*<<< orphan*/  read_wait; } ;
struct file {int dummy; } ;
struct TYPE_4__ {scalar_t__ subtype; } ;
struct TYPE_3__ {scalar_t__ driver_data; int /*<<< orphan*/  write_wait; int /*<<< orphan*/  read_wait; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ PTY_TYPE_MASTER ; 
 int /*<<< orphan*/  TTY_IO_ERROR ; 
 int /*<<< orphan*/  TTY_OTHER_CLOSED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  devpts_mutex ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* ptm_driver ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct tty_struct *tty, struct file *filp)
{
	FUNC0(!tty);
	if (tty->driver->subtype == PTY_TYPE_MASTER)
		FUNC1(tty->count > 1);
	else {
		if (FUNC8(tty))
			return;
		if (tty->count > 2)
			return;
	}
	FUNC5(TTY_IO_ERROR, &tty->flags);
	FUNC10(&tty->read_wait);
	FUNC10(&tty->write_wait);
	FUNC6(&tty->ctrl_lock);
	tty->packet = 0;
	FUNC7(&tty->ctrl_lock);
	/* Review - krefs on tty_link ?? */
	if (!tty->link)
		return;
	FUNC5(TTY_OTHER_CLOSED, &tty->link->flags);
	FUNC10(&tty->link->read_wait);
	FUNC10(&tty->link->write_wait);
	if (tty->driver->subtype == PTY_TYPE_MASTER) {
		FUNC5(TTY_OTHER_CLOSED, &tty->flags);
#ifdef CONFIG_UNIX98_PTYS
		if (tty->driver == ptm_driver) {
			mutex_lock(&devpts_mutex);
			if (tty->link->driver_data)
				devpts_pty_kill(tty->link->driver_data);
			mutex_unlock(&devpts_mutex);
		}
#endif
		FUNC9(tty->link);
	}
}