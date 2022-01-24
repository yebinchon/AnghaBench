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
struct pci224_private {unsigned int ao_enab; unsigned int* ao_scan_order; int daccon; int /*<<< orphan*/  ao_spinlock; scalar_t__ iobase1; int /*<<< orphan*/  intsce; } ;
struct pci224_board {int* ao_hwrange; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int /*<<< orphan*/  pacer; scalar_t__ iobase; struct pci224_private* private; struct pci224_board* board_ptr; } ;
struct comedi_cmd {unsigned int chanlist_len; scalar_t__ scan_begin_src; scalar_t__ start_src; int /*<<< orphan*/ * chanlist; } ;
struct TYPE_2__ {int /*<<< orphan*/  inttrig; struct comedi_cmd cmd; } ;

/* Variables and functions */
 int FUNC0 (int,int,int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ PCI224_DACCEN ; 
 scalar_t__ PCI224_DACCON ; 
 int PCI224_DACCON_FIFOINTR_MASK ; 
 int PCI224_DACCON_FIFOINTR_NHALF ; 
 int PCI224_DACCON_FIFORESET ; 
 int PCI224_DACCON_POLAR_MASK ; 
 int PCI224_DACCON_TRIG_MASK ; 
 int PCI224_DACCON_TRIG_NONE ; 
 int PCI224_DACCON_VREF_MASK ; 
 int /*<<< orphan*/  PCI224_INTR_EXT ; 
 scalar_t__ PCI224_INT_SCE ; 
 scalar_t__ TRIG_INT ; 
 scalar_t__ TRIG_TIMER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  pci224_ao_inttrig_start ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct comedi_device *dev, struct comedi_subdevice *s)
{
	const struct pci224_board *board = dev->board_ptr;
	struct pci224_private *devpriv = dev->private;
	struct comedi_cmd *cmd = &s->async->cmd;
	int range;
	unsigned int i, j;
	unsigned int ch;
	unsigned int rank;
	unsigned long flags;

	/* Cannot handle null/empty chanlist. */
	if (!cmd->chanlist || cmd->chanlist_len == 0)
		return -EINVAL;

	/* Determine which channels are enabled and their load order.  */
	devpriv->ao_enab = 0;

	for (i = 0; i < cmd->chanlist_len; i++) {
		ch = FUNC1(cmd->chanlist[i]);
		devpriv->ao_enab |= 1U << ch;
		rank = 0;
		for (j = 0; j < cmd->chanlist_len; j++) {
			if (FUNC1(cmd->chanlist[j]) < ch)
				rank++;
		}
		devpriv->ao_scan_order[rank] = i;
	}

	/* Set enabled channels. */
	FUNC5(devpriv->ao_enab, dev->iobase + PCI224_DACCEN);

	/* Determine range and polarity.  All channels the same.  */
	range = FUNC2(cmd->chanlist[0]);

	/*
	 * Set DAC range and polarity.
	 * Set DAC scan trigger source to 'none'.
	 * Set DAC FIFO interrupt trigger level to 'not half full'.
	 * Reset DAC FIFO.
	 *
	 * N.B. DAC FIFO interrupts are currently disabled.
	 */
	devpriv->daccon =
	    FUNC0(devpriv->daccon,
		    board->ao_hwrange[range] | PCI224_DACCON_TRIG_NONE |
		    PCI224_DACCON_FIFOINTR_NHALF,
		    PCI224_DACCON_POLAR_MASK | PCI224_DACCON_VREF_MASK |
		    PCI224_DACCON_TRIG_MASK | PCI224_DACCON_FIFOINTR_MASK);
	FUNC5(devpriv->daccon | PCI224_DACCON_FIFORESET,
	     dev->iobase + PCI224_DACCON);

	if (cmd->scan_begin_src == TRIG_TIMER) {
		FUNC3(dev->pacer);
		FUNC6(dev, s);
	}

	FUNC7(&devpriv->ao_spinlock, flags);
	if (cmd->start_src == TRIG_INT) {
		s->async->inttrig = pci224_ao_inttrig_start;
	} else {	/* TRIG_EXT */
		/* Enable external interrupt trigger to start acquisition. */
		devpriv->intsce |= PCI224_INTR_EXT;
		FUNC4(devpriv->intsce, devpriv->iobase1 + PCI224_INT_SCE);
	}
	FUNC8(&devpriv->ao_spinlock, flags);

	return 0;
}