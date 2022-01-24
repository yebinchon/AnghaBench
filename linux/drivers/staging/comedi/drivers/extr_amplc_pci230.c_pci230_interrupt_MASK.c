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
struct pci230_private {unsigned char ier; int intr_running; int /*<<< orphan*/  isr_spinlock; int /*<<< orphan*/  intr_cpuid; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; struct comedi_subdevice* read_subdev; struct comedi_subdevice* write_subdev; struct pci230_private* private; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned char PCI230P2_INT_DAC ; 
 unsigned char PCI230_INT_ADC ; 
 unsigned char PCI230_INT_DISABLE ; 
 scalar_t__ PCI230_INT_SCE ; 
 scalar_t__ PCI230_INT_STAT ; 
 unsigned char PCI230_INT_ZCLK_CT1 ; 
 int /*<<< orphan*/  THISCPU ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,struct comedi_subdevice*) ; 
 unsigned char FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *d)
{
	unsigned char status_int, valid_status_int, temp_ier;
	struct comedi_device *dev = d;
	struct pci230_private *devpriv = dev->private;
	struct comedi_subdevice *s_ao = dev->write_subdev;
	struct comedi_subdevice *s_ai = dev->read_subdev;
	unsigned long irqflags;

	/* Read interrupt status/enable register. */
	status_int = FUNC1(dev->iobase + PCI230_INT_STAT);

	if (status_int == PCI230_INT_DISABLE)
		return IRQ_NONE;

	FUNC6(&devpriv->isr_spinlock, irqflags);
	valid_status_int = devpriv->ier & status_int;
	/*
	 * Disable triggered interrupts.
	 * (Only those interrupts that need re-enabling, are, later in the
	 * handler).
	 */
	temp_ier = devpriv->ier & ~status_int;
	FUNC2(temp_ier, dev->iobase + PCI230_INT_SCE);
	devpriv->intr_running = true;
	devpriv->intr_cpuid = THISCPU;
	FUNC7(&devpriv->isr_spinlock, irqflags);

	/*
	 * Check the source of interrupt and handle it.
	 * The PCI230 can cope with concurrent ADC, DAC, PPI C0 and C3
	 * interrupts.  However, at present (Comedi-0.7.60) does not allow
	 * concurrent execution of commands, instructions or a mixture of the
	 * two.
	 */

	if (valid_status_int & PCI230_INT_ZCLK_CT1)
		FUNC5(dev, s_ao);

	if (valid_status_int & PCI230P2_INT_DAC)
		FUNC4(dev, s_ao);

	if (valid_status_int & PCI230_INT_ADC)
		FUNC3(dev, s_ai);

	/* Reenable interrupts. */
	FUNC6(&devpriv->isr_spinlock, irqflags);
	if (devpriv->ier != temp_ier)
		FUNC2(devpriv->ier, dev->iobase + PCI230_INT_SCE);
	devpriv->intr_running = false;
	FUNC7(&devpriv->isr_spinlock, irqflags);

	if (s_ao)
		FUNC0(dev, s_ao);
	FUNC0(dev, s_ai);

	return IRQ_HANDLED;
}