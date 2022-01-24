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
struct das16_private_struct {int ctrl_reg; scalar_t__ can_burst; int /*<<< orphan*/  timer; scalar_t__ timer_running; struct comedi_isadma* dma; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_isadma {int /*<<< orphan*/  chan; } ;
struct comedi_device {int /*<<< orphan*/  spinlock; scalar_t__ iobase; struct das16_private_struct* private; } ;

/* Variables and functions */
 scalar_t__ DAS1600_BURST_REG ; 
 int DAS16_CTRL_DMAE ; 
 int DAS16_CTRL_INTE ; 
 int DAS16_CTRL_PACING_MASK ; 
 scalar_t__ DAS16_CTRL_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev, struct comedi_subdevice *s)
{
	struct das16_private_struct *devpriv = dev->private;
	struct comedi_isadma *dma = devpriv->dma;
	unsigned long flags;

	FUNC3(&dev->spinlock, flags);

	/* disable interrupts, dma and pacer clocked conversions */
	devpriv->ctrl_reg &= ~(DAS16_CTRL_INTE | DAS16_CTRL_DMAE |
			       DAS16_CTRL_PACING_MASK);
	FUNC2(devpriv->ctrl_reg, dev->iobase + DAS16_CTRL_REG);

	FUNC0(dma->chan);

	/*  disable SW timer */
	if (devpriv->timer_running) {
		devpriv->timer_running = 0;
		FUNC1(&devpriv->timer);
	}

	if (devpriv->can_burst)
		FUNC2(0, dev->iobase + DAS1600_BURST_REG);

	FUNC4(&dev->spinlock, flags);

	return 0;
}