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
typedef  int ssize_t ;
struct TYPE_2__ {unsigned int max_bufsize; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int SDF_CMD_READ ; 
 int UINT_MAX ; 
 struct comedi_device* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*) ; 
 struct comedi_subdevice* FUNC3 (struct comedi_device*,unsigned int) ; 
 int FUNC4 (char const*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *csdev,
					struct device_attribute *attr,
					const char *buf, size_t count)
{
	unsigned int minor = FUNC0(csdev->devt);
	struct comedi_device *dev;
	struct comedi_subdevice *s;
	unsigned int size;
	int err;

	err = FUNC4(buf, 10, &size);
	if (err)
		return err;
	if (size > (UINT_MAX / 1024))
		return -EINVAL;
	size *= 1024;

	dev = FUNC1(minor);
	if (!dev)
		return -ENODEV;

	FUNC5(&dev->mutex);
	s = FUNC3(dev, minor);
	if (s && (s->subdev_flags & SDF_CMD_READ) && s->async)
		s->async->max_bufsize = size;
	else
		err = -EINVAL;
	FUNC6(&dev->mutex);

	FUNC2(dev);
	return err ? err : count;
}