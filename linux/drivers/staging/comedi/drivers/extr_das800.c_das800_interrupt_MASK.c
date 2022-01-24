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
struct das800_private {int do_bits; } ;
struct comedi_subdevice {int maxdata; struct comedi_async* async; } ;
struct comedi_device {int /*<<< orphan*/  spinlock; scalar_t__ iobase; int /*<<< orphan*/  attached; struct comedi_subdevice* read_subdev; struct das800_private* private; } ;
struct comedi_cmd {scalar_t__ stop_src; scalar_t__ stop_arg; } ;
struct comedi_async {scalar_t__ scans_done; int events; struct comedi_cmd cmd; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned int CIO_FFOV ; 
 int COMEDI_CB_CANCEL_MASK ; 
 int COMEDI_CB_EOA ; 
 int COMEDI_CB_ERROR ; 
 int /*<<< orphan*/  CONTROL1 ; 
 int CONTROL1_INTE ; 
 scalar_t__ DAS800_GAIN ; 
 scalar_t__ DAS800_STATUS ; 
 int DAS802_16_HALF_FIFO_SZ ; 
 unsigned int FIFO_EMPTY ; 
 unsigned int FIFO_OVF ; 
 unsigned int IRQ ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int STATUS2_HCEN ; 
 scalar_t__ TRIG_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_subdevice*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_subdevice*) ; 
 unsigned int FUNC2 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*) ; 
 unsigned int FUNC4 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *d)
{
	struct comedi_device *dev = d;
	struct das800_private *devpriv = dev->private;
	struct comedi_subdevice *s = dev->read_subdev;
	struct comedi_async *async;
	struct comedi_cmd *cmd;
	unsigned long irq_flags;
	unsigned int status;
	unsigned int val;
	bool fifo_empty;
	bool fifo_overflow;
	int i;

	status = FUNC6(dev->iobase + DAS800_STATUS);
	if (!(status & IRQ))
		return IRQ_NONE;
	if (!dev->attached)
		return IRQ_HANDLED;

	async = s->async;
	cmd = &async->cmd;

	FUNC7(&dev->spinlock, irq_flags);
	status = FUNC4(dev, CONTROL1) & STATUS2_HCEN;
	/*
	 * Don't release spinlock yet since we want to make sure
	 * no one else disables hardware conversions.
	 */

	/* if hardware conversions are not enabled, then quit */
	if (status == 0) {
		FUNC8(&dev->spinlock, irq_flags);
		return IRQ_HANDLED;
	}

	for (i = 0; i < DAS802_16_HALF_FIFO_SZ; i++) {
		val = FUNC2(dev);
		if (s->maxdata == 0x0fff) {
			fifo_empty = !!(val & FIFO_EMPTY);
			fifo_overflow = !!(val & FIFO_OVF);
		} else {
			/* cio-das802/16 has no fifo empty status bit */
			fifo_empty = false;
			fifo_overflow = !!(FUNC6(dev->iobase + DAS800_GAIN) &
						CIO_FFOV);
		}
		if (fifo_empty || fifo_overflow)
			break;

		if (s->maxdata == 0x0fff)
			val >>= 4;	/* 12-bit sample */

		val &= s->maxdata;
		FUNC0(s, &val, 1);

		if (cmd->stop_src == TRIG_COUNT &&
		    async->scans_done >= cmd->stop_arg) {
			async->events |= COMEDI_CB_EOA;
			break;
		}
	}

	if (fifo_overflow) {
		FUNC8(&dev->spinlock, irq_flags);
		async->events |= COMEDI_CB_ERROR;
		FUNC1(dev, s);
		return IRQ_HANDLED;
	}

	if (!(async->events & COMEDI_CB_CANCEL_MASK)) {
		/*
		 * Re-enable card's interrupt.
		 * We already have spinlock, so indirect addressing is safe
		 */
		FUNC5(dev, CONTROL1_INTE | devpriv->do_bits,
				 CONTROL1);
		FUNC8(&dev->spinlock, irq_flags);
	} else {
		/* otherwise, stop taking data */
		FUNC8(&dev->spinlock, irq_flags);
		FUNC3(dev);
	}
	FUNC1(dev, s);
	return IRQ_HANDLED;
}