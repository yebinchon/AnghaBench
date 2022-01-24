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
struct pci230_private {int ai_cmd_started; unsigned char ier; unsigned short adccon; scalar_t__ daqio; int /*<<< orphan*/  isr_spinlock; } ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {scalar_t__ iobase; struct pci230_private* private; } ;
struct comedi_cmd {int convert_src; int convert_arg; int scan_begin_src; } ;
struct comedi_async {int /*<<< orphan*/  inttrig; struct comedi_cmd cmd; } ;

/* Variables and functions */
 int CR_EDGE ; 
 int CR_INVERT ; 
 int /*<<< orphan*/  GAT_EXT ; 
 int /*<<< orphan*/  GAT_NOUTNM2 ; 
 int /*<<< orphan*/  GAT_VCC ; 
 int /*<<< orphan*/  OWNER_AICMD ; 
 scalar_t__ PCI230_ADCCON ; 
 unsigned short PCI230_ADC_TRIG_EXTN ; 
 unsigned short PCI230_ADC_TRIG_EXTP ; 
 unsigned short PCI230_ADC_TRIG_MASK ; 
 unsigned short PCI230_ADC_TRIG_NONE ; 
 unsigned short PCI230_ADC_TRIG_Z2CT2 ; 
 unsigned char PCI230_INT_ADC ; 
 scalar_t__ PCI230_INT_SCE ; 
 scalar_t__ PCI230_ZGAT_SCE ; 
 int /*<<< orphan*/  RES_Z2CT2 ; 
#define  TRIG_EXT 130 
 int TRIG_FOLLOW ; 
#define  TRIG_INT 129 
#define  TRIG_TIMER 128 
 int /*<<< orphan*/  FUNC0 (unsigned char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned short,scalar_t__) ; 
 int /*<<< orphan*/  pci230_ai_inttrig_convert ; 
 int /*<<< orphan*/  pci230_ai_inttrig_scan_begin ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct comedi_subdevice*) ; 
 unsigned char FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct comedi_device *dev,
			    struct comedi_subdevice *s)
{
	struct pci230_private *devpriv = dev->private;
	unsigned long irqflags;
	unsigned short conv;
	struct comedi_async *async = s->async;
	struct comedi_cmd *cmd = &async->cmd;

	devpriv->ai_cmd_started = true;

	/* Enable ADC FIFO trigger level interrupt. */
	FUNC5(&devpriv->isr_spinlock, irqflags);
	devpriv->ier |= PCI230_INT_ADC;
	FUNC0(devpriv->ier, dev->iobase + PCI230_INT_SCE);
	FUNC6(&devpriv->isr_spinlock, irqflags);

	/*
	 * Update conversion trigger source which is currently set
	 * to CT2 output, which is currently stuck high.
	 */
	switch (cmd->convert_src) {
	default:
		conv = PCI230_ADC_TRIG_NONE;
		break;
	case TRIG_TIMER:
		/* Using CT2 output. */
		conv = PCI230_ADC_TRIG_Z2CT2;
		break;
	case TRIG_EXT:
		if (cmd->convert_arg & CR_EDGE) {
			if ((cmd->convert_arg & CR_INVERT) == 0) {
				/* Trigger on +ve edge. */
				conv = PCI230_ADC_TRIG_EXTP;
			} else {
				/* Trigger on -ve edge. */
				conv = PCI230_ADC_TRIG_EXTN;
			}
		} else {
			/* Backwards compatibility. */
			if (cmd->convert_arg) {
				/* Trigger on +ve edge. */
				conv = PCI230_ADC_TRIG_EXTP;
			} else {
				/* Trigger on -ve edge. */
				conv = PCI230_ADC_TRIG_EXTN;
			}
		}
		break;
	case TRIG_INT:
		/*
		 * Use CT2 output for software trigger due to problems
		 * in differential mode on PCI230/260.
		 */
		conv = PCI230_ADC_TRIG_Z2CT2;
		break;
	}
	devpriv->adccon = (devpriv->adccon & ~PCI230_ADC_TRIG_MASK) | conv;
	FUNC1(devpriv->adccon, devpriv->daqio + PCI230_ADCCON);
	if (cmd->convert_src == TRIG_INT)
		async->inttrig = pci230_ai_inttrig_convert;

	/*
	 * Update FIFO interrupt trigger level, which is currently
	 * set to "full".
	 */
	FUNC2(dev, s);
	if (cmd->convert_src == TRIG_TIMER) {
		/* Update timer gates. */
		unsigned char zgat;

		if (cmd->scan_begin_src != TRIG_FOLLOW) {
			/*
			 * Conversion timer CT2 needs to be gated by
			 * inverted output of monostable CT2.
			 */
			zgat = FUNC3(2, GAT_NOUTNM2);
		} else {
			/*
			 * Conversion timer CT2 needs to be gated on
			 * continuously.
			 */
			zgat = FUNC3(2, GAT_VCC);
		}
		FUNC0(zgat, dev->iobase + PCI230_ZGAT_SCE);
		if (cmd->scan_begin_src != TRIG_FOLLOW) {
			/* Set monostable CT0 trigger source. */
			switch (cmd->scan_begin_src) {
			default:
				zgat = FUNC3(0, GAT_VCC);
				break;
			case TRIG_EXT:
				/*
				 * For CT0 on PCI230, the external trigger
				 * (gate) signal comes from PPC0, which is
				 * channel 16 of the DIO subdevice.  The
				 * application needs to configure this as an
				 * input in order to use it as an external scan
				 * trigger.
				 */
				zgat = FUNC3(0, GAT_EXT);
				break;
			case TRIG_TIMER:
				/*
				 * Monostable CT0 triggered by rising edge on
				 * inverted output of CT1 (falling edge on CT1).
				 */
				zgat = FUNC3(0, GAT_NOUTNM2);
				break;
			case TRIG_INT:
				/*
				 * Monostable CT0 is triggered by inttrig
				 * function waggling the CT0 gate source.
				 */
				zgat = FUNC3(0, GAT_VCC);
				break;
			}
			FUNC0(zgat, dev->iobase + PCI230_ZGAT_SCE);
			switch (cmd->scan_begin_src) {
			case TRIG_TIMER:
				/*
				 * Scan period timer CT1 needs to be
				 * gated on to start counting.
				 */
				zgat = FUNC3(1, GAT_VCC);
				FUNC0(zgat, dev->iobase + PCI230_ZGAT_SCE);
				break;
			case TRIG_INT:
				async->inttrig = pci230_ai_inttrig_scan_begin;
				break;
			}
		}
	} else if (cmd->convert_src != TRIG_INT) {
		/* No longer need Z2-CT2. */
		FUNC4(dev, RES_Z2CT2, OWNER_AICMD);
	}
}