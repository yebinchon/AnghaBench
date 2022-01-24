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
struct tty_driver {unsigned int num; scalar_t__ type; int flags; struct ktermios** termios; int /*<<< orphan*/  name; int /*<<< orphan*/  minor_start; int /*<<< orphan*/  major; } ;
struct ktermios {int dummy; } ;
struct device {int /*<<< orphan*/  kobj; struct attribute_group const** groups; int /*<<< orphan*/  release; struct device* parent; int /*<<< orphan*/  class; scalar_t__ devt; } ;
struct attribute_group {int dummy; } ;
typedef  scalar_t__ dev_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct device* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KOBJ_ADD ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TTY_DRIVER_DYNAMIC_ALLOC ; 
 scalar_t__ TTY_DRIVER_TYPE_PTY ; 
 int /*<<< orphan*/  FUNC2 (struct device*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct ktermios*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct device* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct tty_driver*,unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct device*) ; 
 int FUNC13 (struct tty_driver*,scalar_t__,unsigned int,int) ; 
 int /*<<< orphan*/  tty_class ; 
 int /*<<< orphan*/  tty_device_create_release ; 
 int /*<<< orphan*/  FUNC14 (struct tty_driver*,unsigned int,char*) ; 

struct device *FUNC15(struct tty_driver *driver,
				   unsigned index, struct device *device,
				   void *drvdata,
				   const struct attribute_group **attr_grp)
{
	char name[64];
	dev_t devt = FUNC1(driver->major, driver->minor_start) + index;
	struct ktermios *tp;
	struct device *dev;
	int retval;

	if (index >= driver->num) {
		FUNC10("%s: Attempt to register invalid tty line number (%d)\n",
		       driver->name, index);
		return FUNC0(-EINVAL);
	}

	if (driver->type == TTY_DRIVER_TYPE_PTY)
		FUNC11(driver, index, name);
	else
		FUNC14(driver, index, name);

	dev = FUNC9(sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return FUNC0(-ENOMEM);

	dev->devt = devt;
	dev->class = tty_class;
	dev->parent = device;
	dev->release = tty_device_create_release;
	FUNC3(dev, "%s", name);
	dev->groups = attr_grp;
	FUNC2(dev, drvdata);

	FUNC4(dev, 1);

	retval = FUNC6(dev);
	if (retval)
		goto err_put;

	if (!(driver->flags & TTY_DRIVER_DYNAMIC_ALLOC)) {
		/*
		 * Free any saved termios data so that the termios state is
		 * reset when reusing a minor number.
		 */
		tp = driver->termios[index];
		if (tp) {
			driver->termios[index] = NULL;
			FUNC7(tp);
		}

		retval = FUNC13(driver, devt, index, 1);
		if (retval)
			goto err_del;
	}

	FUNC4(dev, 0);
	FUNC8(&dev->kobj, KOBJ_ADD);

	return dev;

err_del:
	FUNC5(dev);
err_put:
	FUNC12(dev);

	return FUNC0(retval);
}