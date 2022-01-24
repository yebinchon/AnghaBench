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
struct comedi_subdevice {scalar_t__ async; scalar_t__ busy; } ;
struct comedi_device {int n_subdevices; struct comedi_subdevice* subdevices; int /*<<< orphan*/  attached; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev)
{
	struct comedi_subdevice *s;
	int i;

	FUNC1(&dev->mutex);
	if (!dev->attached)
		return 0;

	for (i = 0; i < dev->n_subdevices; i++) {
		s = &dev->subdevices[i];
		if (s->busy)
			return 1;
		if (s->async && FUNC0(s))
			return 1;
	}

	return 0;
}