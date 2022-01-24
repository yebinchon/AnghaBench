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
struct pci224_private {unsigned char intsce; int intr_running; int /*<<< orphan*/  ao_spinlock; scalar_t__ iobase1; int /*<<< orphan*/  intr_cpuid; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct comedi_subdevice* write_subdev; struct pci224_private* private; } ;
struct comedi_cmd {scalar_t__ start_src; scalar_t__ stop_src; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned char PCI224_INTR_DAC ; 
 unsigned char PCI224_INTR_EXT ; 
 scalar_t__ PCI224_INT_SCE ; 
 int /*<<< orphan*/  THISCPU ; 
 scalar_t__ TRIG_EXT ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *d)
{
	struct comedi_device *dev = d;
	struct pci224_private *devpriv = dev->private;
	struct comedi_subdevice *s = dev->write_subdev;
	struct comedi_cmd *cmd;
	unsigned char intstat, valid_intstat;
	unsigned char curenab;
	int retval = 0;
	unsigned long flags;

	intstat = FUNC1(devpriv->iobase1 + PCI224_INT_SCE) & 0x3F;
	if (intstat) {
		retval = 1;
		FUNC6(&devpriv->ao_spinlock, flags);
		valid_intstat = devpriv->intsce & intstat;
		/* Temporarily disable interrupt sources. */
		curenab = devpriv->intsce & ~intstat;
		FUNC2(curenab, devpriv->iobase1 + PCI224_INT_SCE);
		devpriv->intr_running = 1;
		devpriv->intr_cpuid = THISCPU;
		FUNC7(&devpriv->ao_spinlock, flags);
		if (valid_intstat) {
			cmd = &s->async->cmd;
			if (valid_intstat & PCI224_INTR_EXT) {
				devpriv->intsce &= ~PCI224_INTR_EXT;
				if (cmd->start_src == TRIG_EXT)
					FUNC4(dev, s);
				else if (cmd->stop_src == TRIG_EXT)
					FUNC5(dev, s);
			}
			if (valid_intstat & PCI224_INTR_DAC)
				FUNC3(dev, s);
		}
		/* Reenable interrupt sources. */
		FUNC6(&devpriv->ao_spinlock, flags);
		if (curenab != devpriv->intsce) {
			FUNC2(devpriv->intsce,
			     devpriv->iobase1 + PCI224_INT_SCE);
		}
		devpriv->intr_running = 0;
		FUNC7(&devpriv->ao_spinlock, flags);
	}
	return FUNC0(retval);
}