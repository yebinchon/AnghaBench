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
struct comedi_device {unsigned int n_subdevices; int /*<<< orphan*/  attach_lock; TYPE_1__* subdevices; int /*<<< orphan*/  attached; } ;
struct TYPE_2__ {int n_chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct comedi_device *dev, unsigned int subdevice)
{
	int n;

	FUNC0(&dev->attach_lock);
	if (!dev->attached || subdevice >= dev->n_subdevices)
		n = 0;
	else
		n = dev->subdevices[subdevice].n_chan;
	FUNC1(&dev->attach_lock);

	return n;
}