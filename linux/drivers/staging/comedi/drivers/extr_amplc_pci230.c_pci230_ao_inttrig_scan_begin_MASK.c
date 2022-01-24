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
struct pci230_private {int hwver; int /*<<< orphan*/  ao_stop_spinlock; scalar_t__ daqio; int /*<<< orphan*/  ao_cmd_started; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct pci230_private* private; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PCI230P2_DACSWTRIG ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
					struct comedi_subdevice *s,
					unsigned int trig_num)
{
	struct pci230_private *devpriv = dev->private;
	unsigned long irqflags;

	if (trig_num)
		return -EINVAL;

	FUNC3(&devpriv->ao_stop_spinlock, irqflags);
	if (!devpriv->ao_cmd_started) {
		FUNC4(&devpriv->ao_stop_spinlock, irqflags);
		return 1;
	}
	/* Perform scan. */
	if (devpriv->hwver < 2) {
		/* Not using DAC FIFO. */
		FUNC4(&devpriv->ao_stop_spinlock, irqflags);
		FUNC2(dev, s);
		FUNC0(dev, s);
	} else {
		/* Using DAC FIFO. */
		/* Read DACSWTRIG register to trigger conversion. */
		FUNC1(devpriv->daqio + PCI230P2_DACSWTRIG);
		FUNC4(&devpriv->ao_stop_spinlock, irqflags);
	}
	/* Delay.  Should driver be responsible for this? */
	/* XXX TODO: See if DAC busy bit can be used. */
	FUNC5(8);
	return 1;
}