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
struct comedi_subdevice {int subdev_flags; } ;
struct comedi_device {struct comedi_subdevice* write_subdev; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 unsigned int COMEDI_NUM_BOARD_MINORS ; 
 int SDF_CMD_WRITE ; 
 struct comedi_subdevice* FUNC0 (struct comedi_device const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct comedi_subdevice *
FUNC2(const struct comedi_device *dev, unsigned int minor)
{
	struct comedi_subdevice *s;

	FUNC1(&dev->mutex);
	if (minor >= COMEDI_NUM_BOARD_MINORS) {
		s = FUNC0(dev, minor);
		if (!s || (s->subdev_flags & SDF_CMD_WRITE))
			return s;
	}
	return dev->write_subdev;
}