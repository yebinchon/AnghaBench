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
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  devt; } ;
struct comedi_subdevice {int subdev_flags; scalar_t__ async; } ;
struct comedi_device {int /*<<< orphan*/  mutex; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int SDF_CMD_WRITE ; 
 int UINT_MAX ; 
 struct comedi_device* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*) ; 
 struct comedi_subdevice* FUNC3 (struct comedi_device*,unsigned int) ; 
 int FUNC4 (char const*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct comedi_device*,struct comedi_subdevice*,unsigned int) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *csdev,
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
	if (s && (s->subdev_flags & SDF_CMD_WRITE) && s->async)
		err = FUNC7(dev, s, size);
	else
		err = -EINVAL;
	FUNC6(&dev->mutex);

	FUNC2(dev);
	return err ? err : count;
}