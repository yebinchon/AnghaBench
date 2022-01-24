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
struct tty_port {int dummy; } ;
struct tty_driver {int dummy; } ;
struct device {int dummy; } ;
struct attribute_group {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct device* FUNC1 (struct tty_port*,struct device*,struct tty_driver*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_port*,struct tty_driver*,unsigned int) ; 
 struct device* FUNC3 (struct tty_driver*,unsigned int,struct device*,void*,struct attribute_group const**) ; 

struct device *FUNC4(struct tty_port *port,
		struct tty_driver *driver, unsigned index,
		struct device *device, void *drvdata,
		const struct attribute_group **attr_grp)
{
	struct device *dev;

	FUNC2(port, driver, index);

	dev = FUNC1(port, device, driver, index);
	if (FUNC0(dev) != -ENODEV) {
		/* Skip creating cdev if we registered a serdev device */
		return dev;
	}

	return FUNC3(driver, index, device, drvdata,
			attr_grp);
}