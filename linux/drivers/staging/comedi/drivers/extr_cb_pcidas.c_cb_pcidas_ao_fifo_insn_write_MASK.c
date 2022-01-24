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
struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int /*<<< orphan*/  spinlock; struct cb_pcidas_private* private; } ;
struct cb_pcidas_private {int ao_ctrl; scalar_t__ pcibar4; scalar_t__ pcibar1; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned int) ; 
 int PCIDAS_AO_CHAN_MASK ; 
 int PCIDAS_AO_DACEN ; 
 scalar_t__ PCIDAS_AO_FIFO_CLR_REG ; 
 scalar_t__ PCIDAS_AO_FIFO_REG ; 
 int PCIDAS_AO_PACER_MASK ; 
 int FUNC3 (unsigned int,unsigned int) ; 
 int FUNC4 (unsigned int) ; 
 scalar_t__ PCIDAS_AO_REG ; 
 int PCIDAS_AO_START ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct comedi_device *dev,
					struct comedi_subdevice *s,
					struct comedi_insn *insn,
					unsigned int *data)
{
	struct cb_pcidas_private *devpriv = dev->private;
	unsigned int chan = FUNC0(insn->chanspec);
	unsigned int range = FUNC1(insn->chanspec);
	unsigned int val = s->readback[chan];
	unsigned long flags;
	int i;

	/* clear dac fifo */
	FUNC5(0, devpriv->pcibar4 + PCIDAS_AO_FIFO_CLR_REG);

	/* set channel and range */
	FUNC6(&dev->spinlock, flags);
	devpriv->ao_ctrl &= ~(PCIDAS_AO_CHAN_MASK | FUNC4(chan) |
			      PCIDAS_AO_PACER_MASK);
	devpriv->ao_ctrl |= PCIDAS_AO_DACEN | FUNC3(chan, range) |
			    FUNC2(chan) | PCIDAS_AO_START;
	FUNC5(devpriv->ao_ctrl, devpriv->pcibar1 + PCIDAS_AO_REG);
	FUNC7(&dev->spinlock, flags);

	for (i = 0; i < insn->n; i++) {
		val = data[i];
		FUNC5(val, devpriv->pcibar4 + PCIDAS_AO_FIFO_REG);
	}

	s->readback[chan] = val;

	return insn->n;
}