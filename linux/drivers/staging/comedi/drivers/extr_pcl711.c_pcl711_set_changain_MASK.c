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
struct comedi_subdevice {int n_chan; } ;
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 unsigned int AREF_DIFF ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (unsigned int) ; 
 scalar_t__ PCL711_AI_GAIN_REG ; 
 unsigned int FUNC4 (unsigned int) ; 
 unsigned int PCL711_MUX_CS0 ; 
 unsigned int PCL711_MUX_CS1 ; 
 unsigned int PCL711_MUX_DIFF ; 
 scalar_t__ PCL711_MUX_REG ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct comedi_device *dev,
				struct comedi_subdevice *s,
				unsigned int chanspec)
{
	unsigned int chan = FUNC1(chanspec);
	unsigned int range = FUNC2(chanspec);
	unsigned int aref = FUNC0(chanspec);
	unsigned int mux = 0;

	FUNC5(FUNC3(range), dev->iobase + PCL711_AI_GAIN_REG);

	if (s->n_chan > 8) {
		/* Select the correct MPC508A chip */
		if (aref == AREF_DIFF) {
			chan &= 0x7;
			mux |= PCL711_MUX_DIFF;
		} else {
			if (chan < 8)
				mux |= PCL711_MUX_CS0;
			else
				mux |= PCL711_MUX_CS1;
		}
	}
	FUNC5(mux | FUNC4(chan), dev->iobase + PCL711_MUX_REG);
}