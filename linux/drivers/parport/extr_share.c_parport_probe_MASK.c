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
struct parport_driver {int (* probe ) (struct pardevice*) ;int /*<<< orphan*/  name; } ;
struct pardevice {int /*<<< orphan*/  name; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pardevice*) ; 
 struct pardevice* FUNC3 (struct device*) ; 
 struct parport_driver* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct parport_driver *drv;

	if (FUNC0(dev))
		return -ENODEV;

	drv = FUNC4(dev->driver);
	if (!drv->probe) {
		/* if driver has not defined a custom probe */
		struct pardevice *par_dev = FUNC3(dev);

		if (FUNC1(par_dev->name, drv->name))
			return -ENODEV;
		return 0;
	}
	/* if driver defined its own probe */
	return drv->probe(FUNC3(dev));
}