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
struct tty_driver {unsigned int num; unsigned long flags; struct tty_driver* cdevs; struct tty_driver* termios; struct tty_driver* ttys; struct tty_driver* ports; struct module* owner; int /*<<< orphan*/  magic; int /*<<< orphan*/  kref; } ;
struct module {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct tty_driver* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long TTY_DRIVER_DEVPTS_MEM ; 
 unsigned long TTY_DRIVER_DYNAMIC_ALLOC ; 
 int /*<<< orphan*/  TTY_DRIVER_MAGIC ; 
 unsigned long TTY_DRIVER_UNNUMBERED_NODE ; 
 void* FUNC1 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_driver*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct tty_driver* FUNC4 (int,int /*<<< orphan*/ ) ; 

struct tty_driver *FUNC5(unsigned int lines, struct module *owner,
		unsigned long flags)
{
	struct tty_driver *driver;
	unsigned int cdevs = 1;
	int err;

	if (!lines || (flags & TTY_DRIVER_UNNUMBERED_NODE && lines > 1))
		return FUNC0(-EINVAL);

	driver = FUNC4(sizeof(struct tty_driver), GFP_KERNEL);
	if (!driver)
		return FUNC0(-ENOMEM);

	FUNC3(&driver->kref);
	driver->magic = TTY_DRIVER_MAGIC;
	driver->num = lines;
	driver->owner = owner;
	driver->flags = flags;

	if (!(flags & TTY_DRIVER_DEVPTS_MEM)) {
		driver->ttys = FUNC1(lines, sizeof(*driver->ttys),
				GFP_KERNEL);
		driver->termios = FUNC1(lines, sizeof(*driver->termios),
				GFP_KERNEL);
		if (!driver->ttys || !driver->termios) {
			err = -ENOMEM;
			goto err_free_all;
		}
	}

	if (!(flags & TTY_DRIVER_DYNAMIC_ALLOC)) {
		driver->ports = FUNC1(lines, sizeof(*driver->ports),
				GFP_KERNEL);
		if (!driver->ports) {
			err = -ENOMEM;
			goto err_free_all;
		}
		cdevs = lines;
	}

	driver->cdevs = FUNC1(cdevs, sizeof(*driver->cdevs), GFP_KERNEL);
	if (!driver->cdevs) {
		err = -ENOMEM;
		goto err_free_all;
	}

	return driver;
err_free_all:
	FUNC2(driver->ports);
	FUNC2(driver->ttys);
	FUNC2(driver->termios);
	FUNC2(driver->cdevs);
	FUNC2(driver);
	return FUNC0(err);
}