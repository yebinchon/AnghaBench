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
struct comedi_device {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  attached; struct cb_pcidas_private* private; } ;
struct cb_pcidas_private {int amcc_intcsr; unsigned int ctrl; scalar_t__ pcibar1; scalar_t__ amcc; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ AMCC_OP_REG_IMB4 ; 
 scalar_t__ AMCC_OP_REG_INTCSR ; 
 int INTCSR_INBOX_INTR_STATUS ; 
 unsigned int INTCSR_INTR_ASSERTED ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int PCIDAS_CTRL_AI_INT ; 
 unsigned int PCIDAS_CTRL_AO_INT ; 
 scalar_t__ PCIDAS_CTRL_REG ; 
 unsigned int FUNC0 (struct comedi_device*,unsigned int) ; 
 unsigned int FUNC1 (struct comedi_device*,unsigned int) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 unsigned int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *d)
{
	struct comedi_device *dev = d;
	struct cb_pcidas_private *devpriv = dev->private;
	unsigned int irq_clr = 0;
	unsigned int amcc_status;
	unsigned int status;

	if (!dev->attached)
		return IRQ_NONE;

	amcc_status = FUNC2(devpriv->amcc + AMCC_OP_REG_INTCSR);

	if ((INTCSR_INTR_ASSERTED & amcc_status) == 0)
		return IRQ_NONE;

	/*  make sure mailbox 4 is empty */
	FUNC3(devpriv->amcc + AMCC_OP_REG_IMB4);
	/*  clear interrupt on amcc s5933 */
	FUNC5(devpriv->amcc_intcsr | INTCSR_INBOX_INTR_STATUS,
	     devpriv->amcc + AMCC_OP_REG_INTCSR);

	status = FUNC4(devpriv->pcibar1 + PCIDAS_CTRL_REG);

	/* handle analog output interrupts */
	if (status & PCIDAS_CTRL_AO_INT)
		irq_clr |= FUNC1(dev, status);

	/* handle analog input interrupts */
	if (status & PCIDAS_CTRL_AI_INT)
		irq_clr |= FUNC0(dev, status);

	if (irq_clr) {
		unsigned long flags;

		FUNC7(&dev->spinlock, flags);
		FUNC6(devpriv->ctrl | irq_clr,
		     devpriv->pcibar1 + PCIDAS_CTRL_REG);
		FUNC8(&dev->spinlock, flags);
	}

	return IRQ_HANDLED;
}