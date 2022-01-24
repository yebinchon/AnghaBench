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
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int /*<<< orphan*/  class_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  events; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_CB_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct comedi_device*,struct comedi_subdevice*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,struct comedi_subdevice*,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev,
			      struct comedi_subdevice *s)
{
	unsigned int chan;
	unsigned int val;

	if (FUNC1(dev, s, NULL, 0)) {
		FUNC0(dev->class_dev, "A/D mode1/3 IRQ without DRDY!\n");
		s->async->events |= COMEDI_CB_ERROR;
		return;
	}

	val = FUNC2(dev, s, &chan);
	FUNC3(dev, s, chan, val);
}