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
typedef  int u16 ;
struct jr3_pci_subdev_private {scalar_t__ state; TYPE_1__* sensor; } ;
struct comedi_subdevice {struct jr3_pci_subdev_private* private; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  errors; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (struct comedi_device*,struct comedi_subdevice*,unsigned int) ; 
 int sensor_change ; 
 scalar_t__ state_jr3_done ; 
 scalar_t__ state_jr3_poll ; 
 int watch_dog ; 
 int watch_dog2 ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
				struct comedi_subdevice *s,
				struct comedi_insn *insn,
				unsigned int *data)
{
	struct jr3_pci_subdev_private *spriv = s->private;
	unsigned int chan = FUNC0(insn->chanspec);
	u16 errors;
	int i;

	errors = FUNC1(&spriv->sensor->errors);
	if (spriv->state != state_jr3_done ||
	    (errors & (watch_dog | watch_dog2 | sensor_change))) {
		/* No sensor or sensor changed */
		if (spriv->state == state_jr3_done) {
			/* Restart polling */
			spriv->state = state_jr3_poll;
		}
		return -EAGAIN;
	}

	for (i = 0; i < insn->n; i++)
		data[i] = FUNC2(dev, s, chan);

	return insn->n;
}