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
struct inode {int dummy; } ;
struct file {struct comedi_file* private_data; } ;
struct comedi_subdevice {struct file* lock; struct file* busy; } ;
struct comedi_file {struct comedi_device* dev; } ;
struct comedi_device {int n_subdevices; int use_count; int /*<<< orphan*/  mutex; TYPE_1__* driver; int /*<<< orphan*/  (* close ) (struct comedi_device*) ;scalar_t__ attached; struct comedi_subdevice* subdevices; } ;
struct TYPE_2__ {int /*<<< orphan*/  module; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *file)
{
	struct comedi_file *cfp = file->private_data;
	struct comedi_device *dev = cfp->dev;
	struct comedi_subdevice *s = NULL;
	int i;

	FUNC4(&dev->mutex);

	if (dev->subdevices) {
		for (i = 0; i < dev->n_subdevices; i++) {
			s = &dev->subdevices[i];

			if (s->busy == file)
				FUNC1(dev, s);
			if (s->lock == file)
				s->lock = NULL;
		}
	}
	if (dev->attached && dev->use_count == 1) {
		if (dev->close)
			dev->close(dev);
		FUNC3(dev->driver->module);
	}

	dev->use_count--;

	FUNC5(&dev->mutex);
	FUNC0(dev);
	FUNC2(cfp);

	return 0;
}