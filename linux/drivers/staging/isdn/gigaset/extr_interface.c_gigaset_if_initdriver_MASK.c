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
struct TYPE_2__ {int c_cflag; } ;
struct tty_driver {int flags; char const* driver_name; char const* name; TYPE_1__ init_termios; int /*<<< orphan*/  minor_start; int /*<<< orphan*/  subtype; int /*<<< orphan*/  type; } ;
struct gigaset_driver {int have_tty; struct tty_driver* tty; int /*<<< orphan*/  minor; int /*<<< orphan*/  minors; } ;

/* Variables and functions */
 int B9600 ; 
 int CLOCAL ; 
 int CREAD ; 
 int CS8 ; 
 int /*<<< orphan*/  DEBUG_IF ; 
 int HUPCL ; 
 int /*<<< orphan*/  SERIAL_TYPE_NORMAL ; 
 int TTY_DRIVER_DYNAMIC_DEV ; 
 int TTY_DRIVER_REAL_RAW ; 
 int /*<<< orphan*/  TTY_DRIVER_TYPE_SERIAL ; 
 struct tty_driver* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  if_ops ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_driver*) ; 
 int FUNC4 (struct tty_driver*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_driver*,int /*<<< orphan*/ *) ; 
 TYPE_1__ tty_std_termios ; 

void FUNC6(struct gigaset_driver *drv, const char *procname,
			   const char *devname)
{
	int ret;
	struct tty_driver *tty;

	drv->have_tty = 0;

	drv->tty = tty = FUNC0(drv->minors);
	if (tty == NULL)
		goto enomem;

	tty->type =		TTY_DRIVER_TYPE_SERIAL;
	tty->subtype =		SERIAL_TYPE_NORMAL;
	tty->flags =		TTY_DRIVER_REAL_RAW | TTY_DRIVER_DYNAMIC_DEV;

	tty->driver_name =	procname;
	tty->name =		devname;
	tty->minor_start =	drv->minor;

	tty->init_termios          = tty_std_termios;
	tty->init_termios.c_cflag  = B9600 | CS8 | CREAD | HUPCL | CLOCAL;
	FUNC5(tty, &if_ops);

	ret = FUNC4(tty);
	if (ret < 0) {
		FUNC2("error %d registering tty driver\n", ret);
		goto error;
	}
	FUNC1(DEBUG_IF, "tty driver initialized");
	drv->have_tty = 1;
	return;

enomem:
	FUNC2("out of memory\n");
error:
	if (drv->tty)
		FUNC3(drv->tty);
}