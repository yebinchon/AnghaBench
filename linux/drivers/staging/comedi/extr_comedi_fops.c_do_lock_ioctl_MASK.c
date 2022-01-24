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
struct comedi_subdevice {int /*<<< orphan*/  spin_lock; void* lock; scalar_t__ busy; } ;
struct comedi_device {unsigned long n_subdevices; struct comedi_subdevice* subdevices; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev, unsigned long arg,
			 void *file)
{
	int ret = 0;
	unsigned long flags;
	struct comedi_subdevice *s;

	FUNC0(&dev->mutex);
	if (arg >= dev->n_subdevices)
		return -EINVAL;
	s = &dev->subdevices[arg];

	FUNC1(&s->spin_lock, flags);
	if (s->busy || s->lock)
		ret = -EBUSY;
	else
		s->lock = file;
	FUNC2(&s->spin_lock, flags);

	return ret;
}