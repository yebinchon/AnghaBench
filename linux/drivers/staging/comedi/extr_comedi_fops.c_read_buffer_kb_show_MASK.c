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
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  devt; } ;
struct comedi_subdevice {int subdev_flags; TYPE_1__* async; } ;
struct comedi_device {int /*<<< orphan*/  mutex; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int prealloc_bufsz; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int SDF_CMD_READ ; 
 struct comedi_device* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*) ; 
 struct comedi_subdevice* FUNC3 (struct comedi_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,char*,unsigned int) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *csdev,
				   struct device_attribute *attr, char *buf)
{
	unsigned int minor = FUNC0(csdev->devt);
	struct comedi_device *dev;
	struct comedi_subdevice *s;
	unsigned int size = 0;

	dev = FUNC1(minor);
	if (!dev)
		return -ENODEV;

	FUNC4(&dev->mutex);
	s = FUNC3(dev, minor);
	if (s && (s->subdev_flags & SDF_CMD_READ) && s->async)
		size = s->async->prealloc_bufsz / 1024;
	FUNC5(&dev->mutex);

	FUNC2(dev);
	return FUNC6(buf, PAGE_SIZE, "%u\n", size);
}