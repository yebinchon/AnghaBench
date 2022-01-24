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
struct comedi_subdevice {int /*<<< orphan*/  state; } ;
struct comedi_device {scalar_t__ attached; struct comedi_subdevice* read_subdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_subdevice*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct comedi_subdevice*) ; 
 int FUNC3 (struct comedi_device*) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *d)
{
	struct comedi_device *dev = d;
	struct comedi_subdevice *s = dev->read_subdev;
	bool handled;

	handled = FUNC3(dev);
	if (dev->attached && handled) {
		FUNC1(s, &s->state, 1);
		FUNC2(dev, s);
	}
	return FUNC0(handled);
}