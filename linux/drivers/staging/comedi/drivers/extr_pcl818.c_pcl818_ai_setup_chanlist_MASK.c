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
struct pcl818_private {unsigned int act_chanlist_len; unsigned int* act_chanlist; scalar_t__ act_chanlist_pos; } ;
struct comedi_device {struct pcl818_private* private; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct comedi_device *dev,
				     unsigned int *chanlist,
				     unsigned int seglen)
{
	struct pcl818_private *devpriv = dev->private;
	unsigned int first_chan = FUNC0(chanlist[0]);
	unsigned int last_chan;
	unsigned int range;
	int i;

	devpriv->act_chanlist_len = seglen;
	devpriv->act_chanlist_pos = 0;

	/* store range list to card */
	for (i = 0; i < seglen; i++) {
		last_chan = FUNC0(chanlist[i]);
		range = FUNC1(chanlist[i]);

		devpriv->act_chanlist[i] = last_chan;

		FUNC2(dev, last_chan, range);
	}

	FUNC4(1);

	FUNC3(dev, first_chan, last_chan);
}