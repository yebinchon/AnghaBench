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
struct device {int dummy; } ;
struct ccwgroup_driver {int /*<<< orphan*/  driver; } ;
struct ccwgroup_device {int dummy; } ;

/* Variables and functions */
 struct device* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct ccwgroup_device* FUNC1 (struct device*) ; 

struct ccwgroup_device *FUNC2(struct ccwgroup_driver *gdrv,
						 char *bus_id)
{
	struct device *dev;

	dev = FUNC0(&gdrv->driver, bus_id);

	return dev ? FUNC1(dev) : NULL;
}