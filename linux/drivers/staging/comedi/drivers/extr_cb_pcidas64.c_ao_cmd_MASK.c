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
struct pcidas64_private {int ao_dma_desc_bus_addr; scalar_t__ ao_dma_index; scalar_t__ main_iobase; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct pcidas64_private* private; } ;
struct comedi_cmd {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  inttrig; struct comedi_cmd cmd; } ;

/* Variables and functions */
 scalar_t__ DAC_CONTROL0_REG ; 
 int EBUSY ; 
 int PLX_DMADPR_DESCPCI ; 
 int PLX_DMADPR_TCINTR ; 
 int /*<<< orphan*/  ao_inttrig ; 
 scalar_t__ FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct comedi_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,struct comedi_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,struct comedi_cmd*) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct comedi_device *dev, struct comedi_subdevice *s)
{
	struct pcidas64_private *devpriv = dev->private;
	struct comedi_cmd *cmd = &s->async->cmd;

	if (FUNC0(dev)) {
		FUNC5(dev);
		return -EBUSY;
	}
	/* disable analog output system during setup */
	FUNC6(0x0, devpriv->main_iobase + DAC_CONTROL0_REG);

	devpriv->ao_dma_index = 0;

	FUNC4(dev, cmd);
	FUNC3(dev, cmd);
	FUNC1(dev, 0, devpriv->ao_dma_desc_bus_addr |
				  PLX_DMADPR_DESCPCI | PLX_DMADPR_TCINTR);

	FUNC2(dev, cmd);
	s->async->inttrig = ao_inttrig;

	return 0;
}