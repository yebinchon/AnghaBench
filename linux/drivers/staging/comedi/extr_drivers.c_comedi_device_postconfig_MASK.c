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
struct comedi_device {int attached; int /*<<< orphan*/  attach_lock; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev)
{
	int ret;

	FUNC2(&dev->mutex);
	ret = FUNC0(dev);
	if (ret < 0)
		return ret;
	FUNC1(&dev->attach_lock);
	dev->attached = true;
	FUNC3(&dev->attach_lock);
	return 0;
}