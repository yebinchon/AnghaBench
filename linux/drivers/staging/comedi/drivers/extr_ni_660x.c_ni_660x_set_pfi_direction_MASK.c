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
typedef  unsigned long long u64 ;
struct ni_660x_private {unsigned long long io_dir; int /*<<< orphan*/ * io_cfg; } ;
struct comedi_device {struct ni_660x_private* private; } ;

/* Variables and functions */
 unsigned int COMEDI_OUTPUT ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct comedi_device *dev,
				      unsigned int chan,
				      unsigned int direction)
{
	struct ni_660x_private *devpriv = dev->private;
	u64 bit;

	if (chan >= FUNC0(0))
		/* allow new and old names of pfi channels to work. */
		chan -= FUNC0(0);

	bit = 1ULL << chan;

	if (direction == COMEDI_OUTPUT) {
		devpriv->io_dir |= bit;
		/* reset the output to currently assigned output value */
		FUNC1(dev, chan, devpriv->io_cfg[chan]);
	} else {
		devpriv->io_dir &= ~bit;
		/* set pin to high-z; do not change currently assigned route */
		FUNC1(dev, chan, 0);
	}
}