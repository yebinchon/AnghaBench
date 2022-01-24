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
struct comedi_device {int attached; int /*<<< orphan*/  attach_lock; TYPE_1__* driver; int /*<<< orphan*/  detach_count; int /*<<< orphan*/  mutex; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* detach ) (struct comedi_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct comedi_device *dev)
{
	FUNC3(&dev->mutex);
	FUNC0(dev);
	FUNC2(&dev->attach_lock);
	dev->attached = false;
	dev->detach_count++;
	if (dev->driver)
		dev->driver->detach(dev);
	FUNC1(dev);
	FUNC5(&dev->attach_lock);
}