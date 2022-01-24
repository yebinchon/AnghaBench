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
struct tty_struct {int index; int /*<<< orphan*/  dev; int /*<<< orphan*/  name; int /*<<< orphan*/  ops; struct tty_driver* driver; int /*<<< orphan*/  SAK_work; int /*<<< orphan*/  tty_files; int /*<<< orphan*/  files_lock; int /*<<< orphan*/  flow_lock; int /*<<< orphan*/  ctrl_lock; int /*<<< orphan*/  atomic_write_lock; int /*<<< orphan*/  hangup_work; int /*<<< orphan*/  read_wait; int /*<<< orphan*/  write_wait; int /*<<< orphan*/  ldisc_sem; int /*<<< orphan*/  winsize_mutex; int /*<<< orphan*/  termios_rwsem; int /*<<< orphan*/  throttle_mutex; int /*<<< orphan*/  legacy_mutex; int /*<<< orphan*/ * pgrp; int /*<<< orphan*/ * session; int /*<<< orphan*/  magic; int /*<<< orphan*/  kref; } ;
struct tty_driver {int /*<<< orphan*/  ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TTY_MAGIC ; 
 int /*<<< orphan*/  do_SAK_work ; 
 int /*<<< orphan*/  do_tty_hangup ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct tty_struct* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct tty_struct*) ; 
 scalar_t__ FUNC11 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC12 (struct tty_driver*,int,int /*<<< orphan*/ ) ; 

struct tty_struct *FUNC13(struct tty_driver *driver, int idx)
{
	struct tty_struct *tty;

	tty = FUNC7(sizeof(*tty), GFP_KERNEL);
	if (!tty)
		return NULL;

	FUNC6(&tty->kref);
	tty->magic = TTY_MAGIC;
	if (FUNC11(tty)) {
		FUNC5(tty);
		return NULL;
	}
	tty->session = NULL;
	tty->pgrp = NULL;
	FUNC8(&tty->legacy_mutex);
	FUNC8(&tty->throttle_mutex);
	FUNC3(&tty->termios_rwsem);
	FUNC8(&tty->winsize_mutex);
	FUNC2(&tty->ldisc_sem);
	FUNC4(&tty->write_wait);
	FUNC4(&tty->read_wait);
	FUNC1(&tty->hangup_work, do_tty_hangup);
	FUNC8(&tty->atomic_write_lock);
	FUNC9(&tty->ctrl_lock);
	FUNC9(&tty->flow_lock);
	FUNC9(&tty->files_lock);
	FUNC0(&tty->tty_files);
	FUNC1(&tty->SAK_work, do_SAK_work);

	tty->driver = driver;
	tty->ops = driver->ops;
	tty->index = idx;
	FUNC12(driver, idx, tty->name);
	tty->dev = FUNC10(tty);

	return tty;
}