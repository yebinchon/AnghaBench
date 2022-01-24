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
struct pci230_private {int ao_cmd_started; int hwver; unsigned char ier; scalar_t__ intr_cpuid; int daccon; scalar_t__ daqio; int /*<<< orphan*/  isr_spinlock; scalar_t__ intr_running; int /*<<< orphan*/  ao_stop_spinlock; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; struct pci230_private* private; } ;
struct comedi_cmd {scalar_t__ scan_begin_src; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  OWNER_AOCMD ; 
 int PCI230P2_DAC_FIFO_RESET ; 
 int PCI230P2_DAC_FIFO_UNDERRUN_CLEAR ; 
 unsigned char PCI230P2_INT_DAC ; 
 scalar_t__ PCI230_DACCON ; 
 int PCI230_DAC_OR_MASK ; 
 scalar_t__ PCI230_INT_SCE ; 
 unsigned char PCI230_INT_ZCLK_CT1 ; 
 scalar_t__ THISCPU ; 
 scalar_t__ TRIG_TIMER ; 
 int /*<<< orphan*/  FUNC0 (unsigned char,scalar_t__) ; 
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
	unsigned char intsrc;
	bool started;
	struct comedi_cmd *cmd;

	FUNC4(&devpriv->ao_stop_spinlock, irqflags);
	started = devpriv->ao_cmd_started;
	devpriv->ao_cmd_started = false;
	FUNC5(&devpriv->ao_stop_spinlock, irqflags);
	if (!started)
		return;
	cmd = &s->async->cmd;
	if (cmd->scan_begin_src == TRIG_TIMER) {
		/* Stop scan rate generator. */
		FUNC2(dev, 1);
	}
	/* Determine interrupt source. */
	if (devpriv->hwver < 2) {
		/* Not using DAC FIFO.  Using CT1 interrupt. */
		intsrc = PCI230_INT_ZCLK_CT1;
	} else {
		/* Using DAC FIFO interrupt. */
		intsrc = PCI230P2_INT_DAC;
	}
	/*
	 * Disable interrupt and wait for interrupt routine to finish running
	 * unless we are called from the interrupt routine.
	 */
	FUNC4(&devpriv->isr_spinlock, irqflags);
	devpriv->ier &= ~intsrc;
	while (devpriv->intr_running && devpriv->intr_cpuid != THISCPU) {
		FUNC5(&devpriv->isr_spinlock, irqflags);
		FUNC4(&devpriv->isr_spinlock, irqflags);
	}
	FUNC0(devpriv->ier, dev->iobase + PCI230_INT_SCE);
	FUNC5(&devpriv->isr_spinlock, irqflags);
	if (devpriv->hwver >= 2) {
		/*
		 * Using DAC FIFO.  Reset FIFO, clear underrun error,
		 * disable FIFO.
		 */
		devpriv->daccon &= PCI230_DAC_OR_MASK;
		FUNC1(devpriv->daccon | PCI230P2_DAC_FIFO_RESET |
		     PCI230P2_DAC_FIFO_UNDERRUN_CLEAR,
		     devpriv->daqio + PCI230_DACCON);
	}
	/* Release resources. */
	FUNC3(dev, OWNER_AOCMD);
}