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
struct pci230_private {int ai_cmd_started; scalar_t__ intr_cpuid; int adccon; scalar_t__ daqio; int /*<<< orphan*/  isr_spinlock; int /*<<< orphan*/  ier; scalar_t__ intr_running; int /*<<< orphan*/  ai_stop_spinlock; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; struct pci230_private* private; } ;
struct comedi_cmd {scalar_t__ convert_src; scalar_t__ scan_begin_src; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  OWNER_AICMD ; 
 scalar_t__ PCI230_ADCCON ; 
 int PCI230_ADC_FIFO_RESET ; 
 int PCI230_ADC_IM_MASK ; 
 int PCI230_ADC_IR_MASK ; 
 int PCI230_ADC_TRIG_NONE ; 
 int /*<<< orphan*/  PCI230_INT_ADC ; 
 scalar_t__ PCI230_INT_SCE ; 
 scalar_t__ THISCPU ; 
 scalar_t__ TRIG_FOLLOW ; 
 scalar_t__ TRIG_TIMER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct comedi_device *dev,
			   struct comedi_subdevice *s)
{
	struct pci230_private *devpriv = dev->private;
	unsigned long irqflags;
	struct comedi_cmd *cmd;
	bool started;

	FUNC4(&devpriv->ai_stop_spinlock, irqflags);
	started = devpriv->ai_cmd_started;
	devpriv->ai_cmd_started = false;
	FUNC5(&devpriv->ai_stop_spinlock, irqflags);
	if (!started)
		return;
	cmd = &s->async->cmd;
	if (cmd->convert_src == TRIG_TIMER) {
		/* Stop conversion rate generator. */
		FUNC2(dev, 2);
	}
	if (cmd->scan_begin_src != TRIG_FOLLOW) {
		/* Stop scan period monostable. */
		FUNC2(dev, 0);
	}
	FUNC4(&devpriv->isr_spinlock, irqflags);
	/*
	 * Disable ADC interrupt and wait for interrupt routine to finish
	 * running unless we are called from the interrupt routine.
	 */
	devpriv->ier &= ~PCI230_INT_ADC;
	while (devpriv->intr_running && devpriv->intr_cpuid != THISCPU) {
		FUNC5(&devpriv->isr_spinlock, irqflags);
		FUNC4(&devpriv->isr_spinlock, irqflags);
	}
	FUNC0(devpriv->ier, dev->iobase + PCI230_INT_SCE);
	FUNC5(&devpriv->isr_spinlock, irqflags);
	/*
	 * Reset FIFO, disable FIFO and set start conversion source to none.
	 * Keep se/diff and bip/uni settings.
	 */
	devpriv->adccon =
	    (devpriv->adccon & (PCI230_ADC_IR_MASK | PCI230_ADC_IM_MASK)) |
	    PCI230_ADC_TRIG_NONE;
	FUNC1(devpriv->adccon | PCI230_ADC_FIFO_RESET,
	     devpriv->daqio + PCI230_ADCCON);
	/* Release resources. */
	FUNC3(dev, OWNER_AICMD);
}