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
struct TYPE_2__ {int c_cflag; int c_lflag; } ;
struct tty_driver {int flags; TYPE_1__ init_termios; int /*<<< orphan*/  subtype; int /*<<< orphan*/  type; int /*<<< orphan*/  major; int /*<<< orphan*/  name; int /*<<< orphan*/  driver_name; int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int B9600 ; 
 int CLOCAL ; 
 int CS8 ; 
 int /*<<< orphan*/ * DEVICE_STRING ; 
 int /*<<< orphan*/ * DRIVER_STRING ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GDM_TTY_MAJOR ; 
 int /*<<< orphan*/  GDM_TTY_MINOR ; 
 int HUPCL ; 
 int ICANON ; 
 int IEXTEN ; 
 int ISIG ; 
 int /*<<< orphan*/  SERIAL_TYPE_NORMAL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int TTY_DRIVER_DYNAMIC_DEV ; 
 int TTY_DRIVER_REAL_RAW ; 
 int /*<<< orphan*/  TTY_DRIVER_TYPE_SERIAL ; 
 int TTY_MAX_COUNT ; 
 struct tty_driver* FUNC0 (int /*<<< orphan*/ ) ; 
 struct tty_driver** gdm_driver ; 
 int /*<<< orphan*/  gdm_tty_ops ; 
 int /*<<< orphan*/  FUNC1 (struct tty_driver*) ; 
 int FUNC2 (struct tty_driver*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_driver*,int /*<<< orphan*/ *) ; 
 TYPE_1__ tty_std_termios ; 

int FUNC4(void)
{
	struct tty_driver *tty_driver;
	int i;
	int ret;

	for (i = 0; i < TTY_MAX_COUNT; i++) {
		tty_driver = FUNC0(GDM_TTY_MINOR);
		if (!tty_driver)
			return -ENOMEM;

		tty_driver->owner = THIS_MODULE;
		tty_driver->driver_name = DRIVER_STRING[i];
		tty_driver->name = DEVICE_STRING[i];
		tty_driver->major = GDM_TTY_MAJOR;
		tty_driver->type = TTY_DRIVER_TYPE_SERIAL;
		tty_driver->subtype = SERIAL_TYPE_NORMAL;
		tty_driver->flags = TTY_DRIVER_REAL_RAW |
					TTY_DRIVER_DYNAMIC_DEV;
		tty_driver->init_termios = tty_std_termios;
		tty_driver->init_termios.c_cflag = B9600 | CS8 | HUPCL | CLOCAL;
		tty_driver->init_termios.c_lflag = ISIG | ICANON | IEXTEN;
		FUNC3(tty_driver, &gdm_tty_ops);

		ret = FUNC2(tty_driver);
		if (ret) {
			FUNC1(tty_driver);
			return ret;
		}

		gdm_driver[i] = tty_driver;
	}

	return ret;
}