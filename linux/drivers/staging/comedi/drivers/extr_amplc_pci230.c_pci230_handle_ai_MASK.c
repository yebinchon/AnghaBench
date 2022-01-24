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
struct pci230_private {scalar_t__ hwver; scalar_t__ daqio; } ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int /*<<< orphan*/  class_dev; struct pci230_private* private; } ;
struct comedi_cmd {scalar_t__ stop_src; scalar_t__ stop_arg; } ;
struct comedi_async {int events; scalar_t__ scans_done; struct comedi_cmd cmd; } ;

/* Variables and functions */
 int COMEDI_CB_CANCEL_MASK ; 
 int COMEDI_CB_EOA ; 
 int COMEDI_CB_ERROR ; 
 scalar_t__ PCI230P_ADCFFLEV ; 
 scalar_t__ PCI230_ADCCON ; 
 unsigned int PCI230_ADC_FIFOLEVEL_HALFFULL ; 
 unsigned int PCI230_ADC_FIFO_EMPTY ; 
 unsigned int PCI230_ADC_FIFO_FULL_LATCHED ; 
 unsigned int PCI230_ADC_FIFO_HALF ; 
 scalar_t__ TRIG_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_subdevice*,unsigned short*,int) ; 
 unsigned int FUNC1 (struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 unsigned short FUNC4 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,struct comedi_subdevice*) ; 

__attribute__((used)) static void FUNC6(struct comedi_device *dev,
			     struct comedi_subdevice *s)
{
	struct pci230_private *devpriv = dev->private;
	struct comedi_async *async = s->async;
	struct comedi_cmd *cmd = &async->cmd;
	unsigned int status_fifo;
	unsigned int i;
	unsigned int nsamples;
	unsigned int fifoamount;
	unsigned short val;

	/* Determine number of samples to read. */
	nsamples = FUNC1(s, PCI230_ADC_FIFOLEVEL_HALFFULL);
	if (nsamples == 0)
		return;

	fifoamount = 0;
	for (i = 0; i < nsamples; i++) {
		if (fifoamount == 0) {
			/* Read FIFO state. */
			status_fifo = FUNC3(devpriv->daqio + PCI230_ADCCON);
			if (status_fifo & PCI230_ADC_FIFO_FULL_LATCHED) {
				/*
				 * Report error otherwise FIFO overruns will go
				 * unnoticed by the caller.
				 */
				FUNC2(dev->class_dev, "AI FIFO overrun\n");
				async->events |= COMEDI_CB_ERROR;
				break;
			} else if (status_fifo & PCI230_ADC_FIFO_EMPTY) {
				/* FIFO empty. */
				break;
			} else if (status_fifo & PCI230_ADC_FIFO_HALF) {
				/* FIFO half full. */
				fifoamount = PCI230_ADC_FIFOLEVEL_HALFFULL;
			} else if (devpriv->hwver > 0) {
				/* Read PCI230+/260+ ADC FIFO level. */
				fifoamount = FUNC3(devpriv->daqio +
						 PCI230P_ADCFFLEV);
				if (fifoamount == 0)
					break;	/* Shouldn't happen. */
			} else {
				/* FIFO not empty. */
				fifoamount = 1;
			}
		}

		val = FUNC4(dev);
		if (!FUNC0(s, &val, 1))
			break;

		fifoamount--;

		if (cmd->stop_src == TRIG_COUNT &&
		    async->scans_done >= cmd->stop_arg) {
			async->events |= COMEDI_CB_EOA;
			break;
		}
	}

	/* update FIFO interrupt trigger level if still running */
	if (!(async->events & COMEDI_CB_CANCEL_MASK))
		FUNC5(dev, s);
}