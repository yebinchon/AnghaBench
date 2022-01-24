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
struct module {int dummy; } ;
struct comedi_device {int /*<<< orphan*/  mutex; scalar_t__ use_count; TYPE_1__* driver; scalar_t__ attached; } ;
struct TYPE_2__ {struct module* module; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct module*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev)
{
	struct module *driver_module = NULL;

	if (!dev)
		return;
	FUNC2(&dev->mutex);
	if (dev->attached)
		driver_module = dev->driver->module;
	FUNC0(dev);
	if (driver_module && dev->use_count)
		FUNC1(driver_module);
	FUNC3(&dev->mutex);
}