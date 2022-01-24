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
struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; struct apci3120_private* private; } ;
struct apci3120_private {int ctrl; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 scalar_t__ APCI3120_CHANLIST_REG ; 
 unsigned int APCI3120_CHANLIST_UNIPOLAR ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 scalar_t__ APCI3120_CTRL_REG ; 
 int /*<<< orphan*/  APCI3120_MODE_SCAN_ENA ; 
 scalar_t__ APCI3120_TIMER_MODE_REG ; 
 unsigned int FUNC5 (unsigned int) ; 
 unsigned int FUNC6 (unsigned int) ; 
 scalar_t__ FUNC7 (struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct comedi_device *dev,
				  struct comedi_subdevice *s,
				  int n_chan, unsigned int *chanlist)
{
	struct apci3120_private *devpriv = dev->private;
	int i;

	/* set chanlist for scan */
	for (i = 0; i < n_chan; i++) {
		unsigned int chan = FUNC5(chanlist[i]);
		unsigned int range = FUNC6(chanlist[i]);
		unsigned int val;

		val = FUNC2(chan) |
		      FUNC0(range) |
		      FUNC1(i);

		if (FUNC7(s, range))
			val |= APCI3120_CHANLIST_UNIPOLAR;

		FUNC9(val, dev->iobase + APCI3120_CHANLIST_REG);
	}

	/* a dummy read of APCI3120_TIMER_MODE_REG resets the ai FIFO */
	FUNC8(dev->iobase + APCI3120_TIMER_MODE_REG);

	/* set scan length (PR) and scan start (PA) */
	devpriv->ctrl = FUNC4(n_chan - 1) | FUNC3(0);
	FUNC9(devpriv->ctrl, dev->iobase + APCI3120_CTRL_REG);

	/* enable chanlist scanning if necessary */
	if (n_chan > 1)
		devpriv->mode |= APCI3120_MODE_SCAN_ENA;
}