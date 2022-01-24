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
struct ni_private {scalar_t__ is_m_series; int /*<<< orphan*/  mite_channel_lock; scalar_t__ ao_mite_chan; scalar_t__ ai_mite_chan; scalar_t__ mite; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  attached; struct ni_private* private; struct comedi_subdevice* write_subdev; struct comedi_subdevice* read_subdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned short NISTC_AI_STATUS1_INTA ; 
 int /*<<< orphan*/  NISTC_AI_STATUS1_REG ; 
 unsigned short NISTC_AO_STATUS1_INTB ; 
 int /*<<< orphan*/  NISTC_AO_STATUS1_REG ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,struct comedi_subdevice*,unsigned short) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,struct comedi_subdevice*,unsigned short) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,struct comedi_subdevice*,int) ; 
 unsigned short FUNC8 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC12(int irq, void *d)
{
	struct comedi_device *dev = d;
	struct comedi_subdevice *s_ai = dev->read_subdev;
	struct comedi_subdevice *s_ao = dev->write_subdev;
	unsigned short a_status;
	unsigned short b_status;
	unsigned long flags;
#ifdef PCIDMA
	struct ni_private *devpriv = dev->private;
#endif

	if (!dev->attached)
		return IRQ_NONE;
	FUNC9();		/* make sure dev->attached is checked */

	/*  lock to avoid race with comedi_poll */
	FUNC10(&dev->spinlock, flags);
	a_status = FUNC8(dev, NISTC_AI_STATUS1_REG);
	b_status = FUNC8(dev, NISTC_AO_STATUS1_REG);
#ifdef PCIDMA
	if (devpriv->mite) {
		unsigned long flags_too;

		spin_lock_irqsave(&devpriv->mite_channel_lock, flags_too);
		if (s_ai && devpriv->ai_mite_chan)
			mite_ack_linkc(devpriv->ai_mite_chan, s_ai, false);
		if (s_ao && devpriv->ao_mite_chan)
			mite_ack_linkc(devpriv->ao_mite_chan, s_ao, false);
		spin_unlock_irqrestore(&devpriv->mite_channel_lock, flags_too);
	}
#endif
	FUNC0(dev, a_status);
	FUNC1(dev, b_status);
	if (s_ai) {
		if (a_status & NISTC_AI_STATUS1_INTA)
			FUNC3(dev, s_ai, a_status);
		/* handle any interrupt or dma events */
		FUNC2(dev, s_ai);
	}
	if (s_ao) {
		if (b_status & NISTC_AO_STATUS1_INTB)
			FUNC4(dev, s_ao, b_status);
		/* handle any interrupt or dma events */
		FUNC2(dev, s_ao);
	}
	FUNC6(dev, 0);
	FUNC6(dev, 1);
#ifdef PCIDMA
	if (devpriv->is_m_series)
		handle_cdio_interrupt(dev);
#endif

	FUNC11(&dev->spinlock, flags);
	return IRQ_HANDLED;
}