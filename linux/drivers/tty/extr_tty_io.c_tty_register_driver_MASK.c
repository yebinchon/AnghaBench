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
struct tty_driver {int num; int flags; int /*<<< orphan*/  tty_drivers; int /*<<< orphan*/  name; int /*<<< orphan*/  minor_start; scalar_t__ major; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*) ; 
 int TTY_DRIVER_DYNAMIC_ALLOC ; 
 int TTY_DRIVER_DYNAMIC_DEV ; 
 int TTY_DRIVER_INSTALLED ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct tty_driver*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct tty_driver*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  tty_drivers ; 
 int /*<<< orphan*/  tty_mutex ; 
 struct device* FUNC13 (struct tty_driver*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct tty_driver*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 

int FUNC16(struct tty_driver *driver)
{
	int error;
	int i;
	dev_t dev;
	struct device *d;

	if (!driver->major) {
		error = FUNC5(&dev, driver->minor_start,
						driver->num, driver->name);
		if (!error) {
			driver->major = FUNC1(dev);
			driver->minor_start = FUNC2(dev);
		}
	} else {
		dev = FUNC3(driver->major, driver->minor_start);
		error = FUNC11(dev, driver->num, driver->name);
	}
	if (error < 0)
		goto err;

	if (driver->flags & TTY_DRIVER_DYNAMIC_ALLOC) {
		error = FUNC12(driver, dev, 0, driver->num);
		if (error)
			goto err_unreg_char;
	}

	FUNC8(&tty_mutex);
	FUNC6(&driver->tty_drivers, &tty_drivers);
	FUNC9(&tty_mutex);

	if (!(driver->flags & TTY_DRIVER_DYNAMIC_DEV)) {
		for (i = 0; i < driver->num; i++) {
			d = FUNC13(driver, i, NULL);
			if (FUNC0(d)) {
				error = FUNC4(d);
				goto err_unreg_devs;
			}
		}
	}
	FUNC10(driver);
	driver->flags |= TTY_DRIVER_INSTALLED;
	return 0;

err_unreg_devs:
	for (i--; i >= 0; i--)
		FUNC14(driver, i);

	FUNC8(&tty_mutex);
	FUNC7(&driver->tty_drivers);
	FUNC9(&tty_mutex);

err_unreg_char:
	FUNC15(dev, driver->num);
err:
	return error;
}