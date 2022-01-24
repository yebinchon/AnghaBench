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
struct pcl812_private {unsigned int last_ai_chanspec; unsigned int range_correction; int /*<<< orphan*/  max_812_ai_mode0_rangewait; scalar_t__ use_diff; scalar_t__ use_mpc508; } ;
struct comedi_device {scalar_t__ iobase; struct pcl812_private* private; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 unsigned int PCL812_MUX_CS0 ; 
 unsigned int PCL812_MUX_CS1 ; 
 scalar_t__ PCL812_MUX_REG ; 
 scalar_t__ PCL812_RANGE_REG ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct comedi_device *dev,
				     unsigned int chanspec, char wait)
{
	struct pcl812_private *devpriv = dev->private;
	unsigned int chan = FUNC0(chanspec);
	unsigned int range = FUNC1(chanspec);
	unsigned int mux = 0;

	if (chanspec == devpriv->last_ai_chanspec)
		return;

	devpriv->last_ai_chanspec = chanspec;

	if (devpriv->use_mpc508) {
		if (devpriv->use_diff) {
			mux |= PCL812_MUX_CS0 | PCL812_MUX_CS1;
		} else {
			if (chan < 8)
				mux |= PCL812_MUX_CS0;
			else
				mux |= PCL812_MUX_CS1;
		}
	}

	FUNC3(mux | FUNC2(chan), dev->iobase + PCL812_MUX_REG);
	FUNC3(range + devpriv->range_correction, dev->iobase + PCL812_RANGE_REG);

	if (wait)
		/*
		 * XXX this depends on selected range and can be very long for
		 * some high gain ranges!
		 */
		FUNC4(devpriv->max_812_ai_mode0_rangewait);
}