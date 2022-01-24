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
struct tty_struct {int index; int /*<<< orphan*/  count; struct tty_port* port; struct tty_struct* link; int /*<<< orphan*/  termios; int /*<<< orphan*/  termios_locked; int /*<<< orphan*/  termios_rwsem; } ;
struct tty_port {struct tty_struct* itty; } ;
struct tty_driver {scalar_t__ subtype; int /*<<< orphan*/  owner; struct tty_driver* other; int /*<<< orphan*/  init_termios; struct tty_struct** ttys; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ PTY_TYPE_MASTER ; 
 int /*<<< orphan*/  TTY_LOCK_SLAVE ; 
 struct tty_struct* FUNC0 (struct tty_driver*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_port*) ; 
 struct tty_port* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_port*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct tty_driver*) ; 
 int /*<<< orphan*/  FUNC10 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC12 (struct tty_struct*) ; 

__attribute__((used)) static int FUNC13(struct tty_driver *driver, struct tty_struct *tty,
		bool legacy)
{
	struct tty_struct *o_tty;
	struct tty_port *ports[2];
	int idx = tty->index;
	int retval = -ENOMEM;

	/* Opening the slave first has always returned -EIO */
	if (driver->subtype != PTY_TYPE_MASTER)
		return -EIO;

	ports[0] = FUNC2(sizeof **ports, GFP_KERNEL);
	ports[1] = FUNC2(sizeof **ports, GFP_KERNEL);
	if (!ports[0] || !ports[1])
		goto err;
	if (!FUNC6(driver->other->owner)) {
		/* This cannot in fact currently happen */
		goto err;
	}
	o_tty = FUNC0(driver->other, idx);
	if (!o_tty)
		goto err_put_module;

	FUNC12(o_tty);
	FUNC3(&o_tty->termios_rwsem, TTY_LOCK_SLAVE);

	if (legacy) {
		/* We always use new tty termios data so we can do this
		   the easy way .. */
		FUNC10(tty);
		FUNC10(o_tty);

		driver->other->ttys[idx] = o_tty;
		driver->ttys[idx] = tty;
	} else {
		FUNC4(&tty->termios_locked, 0, sizeof(tty->termios_locked));
		tty->termios = driver->init_termios;
		FUNC4(&o_tty->termios_locked, 0, sizeof(tty->termios_locked));
		o_tty->termios = driver->other->init_termios;
	}

	/*
	 * Everything allocated ... set up the o_tty structure.
	 */
	FUNC9(driver->other);
	/* Establish the links in both directions */
	tty->link   = o_tty;
	o_tty->link = tty;
	FUNC11(ports[0]);
	FUNC11(ports[1]);
	FUNC7(ports[0], 8192);
	FUNC7(ports[1], 8192);
	o_tty->port = ports[0];
	tty->port = ports[1];
	o_tty->port->itty = o_tty;

	FUNC8(o_tty->port);

	FUNC9(driver);
	tty->count++;
	o_tty->count++;
	return 0;

err_put_module:
	FUNC5(driver->other->owner);
err:
	FUNC1(ports[0]);
	FUNC1(ports[1]);
	return retval;
}