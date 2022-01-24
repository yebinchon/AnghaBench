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
struct nidio96_private {int /*<<< orphan*/  mite_channel_lock; scalar_t__ di_mite_chan; } ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int /*<<< orphan*/  spinlock; scalar_t__ mmio; int /*<<< orphan*/  class_dev; int /*<<< orphan*/  attached; struct comedi_subdevice* read_subdev; struct nidio96_private* private; } ;
struct comedi_async {int /*<<< orphan*/  events; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int CLEAR_EXPIRED ; 
 int CLEAR_PRIMARY_TC ; 
 int CLEAR_SECONDARY_TC ; 
 int CLEAR_WAITED ; 
 int /*<<< orphan*/  COMEDI_CB_EOA ; 
 int /*<<< orphan*/  COMEDI_CB_ERROR ; 
 int COUNT_EXPIRED ; 
 int DATA_LEFT ; 
 scalar_t__ GROUP_1_FIFO ; 
 scalar_t__ GROUP_1_FIRST_CLEAR ; 
 scalar_t__ GROUP_1_FLAGS ; 
 scalar_t__ GROUP_1_SECOND_CLEAR ; 
 scalar_t__ INTERRUPT_AND_WINDOW_STATUS ; 
 int INT_EN ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ MASTER_DMA_AND_INTERRUPT_CONTROL ; 
 scalar_t__ OP_MODE ; 
 int PRIMARY_TC ; 
 int SECONDARY_TC ; 
 int TRANSFER_READY ; 
 int WAITED ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_subdevice*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct comedi_subdevice*,int) ; 
 int FUNC4 (scalar_t__) ; 
 unsigned int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tag ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *d)
{
	struct comedi_device *dev = d;
	struct nidio96_private *devpriv = dev->private;
	struct comedi_subdevice *s = dev->read_subdev;
	struct comedi_async *async = s->async;
	unsigned int auxdata;
	int flags;
	int status;
	int work = 0;

	/* interrupcions parasites */
	if (!dev->attached) {
		/* assume it's from another card */
		return IRQ_NONE;
	}

	/* Lock to avoid race with comedi_poll */
	FUNC6(&dev->spinlock);

	status = FUNC4(dev->mmio + INTERRUPT_AND_WINDOW_STATUS);
	flags = FUNC4(dev->mmio + GROUP_1_FLAGS);

	FUNC6(&devpriv->mite_channel_lock);
	if (devpriv->di_mite_chan) {
		FUNC3(devpriv->di_mite_chan, s, false);
		/* XXX need to byteswap sync'ed dma */
	}
	FUNC7(&devpriv->mite_channel_lock);

	while (status & DATA_LEFT) {
		work++;
		if (work > 20) {
			FUNC2(dev->class_dev, "too much work in interrupt\n");
			FUNC8(0x00,
			       dev->mmio + MASTER_DMA_AND_INTERRUPT_CONTROL);
			break;
		}

		flags &= INT_EN;

		if (flags & TRANSFER_READY) {
			while (flags & TRANSFER_READY) {
				work++;
				if (work > 100) {
					FUNC2(dev->class_dev,
						"too much work in interrupt\n");
					FUNC8(0x00, dev->mmio +
					       MASTER_DMA_AND_INTERRUPT_CONTROL
					      );
					goto out;
				}
				auxdata = FUNC5(dev->mmio + GROUP_1_FIFO);
				FUNC0(s, &auxdata, 1);
				flags = FUNC4(dev->mmio + GROUP_1_FLAGS);
			}
		}

		if (flags & COUNT_EXPIRED) {
			FUNC8(CLEAR_EXPIRED, dev->mmio + GROUP_1_SECOND_CLEAR);
			async->events |= COMEDI_CB_EOA;

			FUNC8(0x00, dev->mmio + OP_MODE);
			break;
		} else if (flags & WAITED) {
			FUNC8(CLEAR_WAITED, dev->mmio + GROUP_1_FIRST_CLEAR);
			async->events |= COMEDI_CB_ERROR;
			break;
		} else if (flags & PRIMARY_TC) {
			FUNC8(CLEAR_PRIMARY_TC,
			       dev->mmio + GROUP_1_FIRST_CLEAR);
			async->events |= COMEDI_CB_EOA;
		} else if (flags & SECONDARY_TC) {
			FUNC8(CLEAR_SECONDARY_TC,
			       dev->mmio + GROUP_1_FIRST_CLEAR);
			async->events |= COMEDI_CB_EOA;
		}

		flags = FUNC4(dev->mmio + GROUP_1_FLAGS);
		status = FUNC4(dev->mmio + INTERRUPT_AND_WINDOW_STATUS);
	}

out:
	FUNC1(dev, s);
#if 0
	if (!tag)
		writeb(0x03, dev->mmio + MASTER_DMA_AND_INTERRUPT_CONTROL);
#endif

	FUNC7(&dev->spinlock);
	return IRQ_HANDLED;
}