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
struct pci1710_private {unsigned int* act_chanlist; int mux_scan; scalar_t__ unipolar_gain; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; struct pci1710_private* private; } ;

/* Variables and functions */
 unsigned int AREF_DIFF ; 
 unsigned int FUNC0 (unsigned int) ; 
 void* FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (unsigned int) ; 
 int FUNC4 (unsigned int) ; 
 int FUNC5 (unsigned int) ; 
 scalar_t__ PCI171X_MUX_REG ; 
 unsigned int PCI171X_RANGE_DIFF ; 
 unsigned int FUNC6 (unsigned int) ; 
 scalar_t__ PCI171X_RANGE_REG ; 
 unsigned int PCI171X_RANGE_UNI ; 
 scalar_t__ FUNC7 (struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct comedi_device *dev,
				      struct comedi_subdevice *s,
				      unsigned int *chanlist,
				      unsigned int n_chan,
				      unsigned int seglen)
{
	struct pci1710_private *devpriv = dev->private;
	unsigned int first_chan = FUNC1(chanlist[0]);
	unsigned int last_chan = FUNC1(chanlist[seglen - 1]);
	unsigned int i;

	for (i = 0; i < seglen; i++) {	/*  store range list to card */
		unsigned int chan = FUNC1(chanlist[i]);
		unsigned int range = FUNC2(chanlist[i]);
		unsigned int aref = FUNC0(chanlist[i]);
		unsigned int rangeval = 0;

		if (aref == AREF_DIFF)
			rangeval |= PCI171X_RANGE_DIFF;
		if (FUNC7(s, range)) {
			rangeval |= PCI171X_RANGE_UNI;
			range -= devpriv->unipolar_gain;
		}
		rangeval |= FUNC6(range);

		/* select channel and set range */
		FUNC8(FUNC3(chan), dev->iobase + PCI171X_MUX_REG);
		FUNC8(rangeval, dev->iobase + PCI171X_RANGE_REG);

		devpriv->act_chanlist[i] = chan;
	}
	for ( ; i < n_chan; i++)	/* store remainder of channel list */
		devpriv->act_chanlist[i] = FUNC1(chanlist[i]);

	/* select channel interval to scan */
	devpriv->mux_scan = FUNC5(first_chan) |
			    FUNC4(last_chan);
	FUNC8(devpriv->mux_scan, dev->iobase + PCI171X_MUX_REG);
}