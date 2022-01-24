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
struct pcmcia_device {int config_flags; int /*<<< orphan*/  irq; TYPE_1__** resource; } ;
struct comedi_device {int /*<<< orphan*/  iobase; int /*<<< orphan*/ * board_ptr; } ;
struct TYPE_2__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int CONF_AUTO_SET_IO ; 
 int CONF_ENABLE_IRQ ; 
 int CONF_ENABLE_PULSE_IRQ ; 
 int EINVAL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int FUNC0 (struct comedi_device*,int /*<<< orphan*/ *) ; 
 struct pcmcia_device* FUNC1 (struct comedi_device*) ; 
 int FUNC2 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * labpc_cs_boards ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
				unsigned long context)
{
	struct pcmcia_device *link = FUNC1(dev);
	int ret;

	/* The ni_labpc driver needs the board_ptr */
	dev->board_ptr = &labpc_cs_boards[0];

	link->config_flags |= CONF_AUTO_SET_IO |
			      CONF_ENABLE_IRQ | CONF_ENABLE_PULSE_IRQ;
	ret = FUNC0(dev, NULL);
	if (ret)
		return ret;
	dev->iobase = link->resource[0]->start;

	if (!link->irq)
		return -EINVAL;

	return FUNC2(dev, link->irq, IRQF_SHARED);
}