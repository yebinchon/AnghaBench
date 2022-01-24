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
struct pcl812_private {int mode_reg_int; int /*<<< orphan*/  last_ai_chanspec; } ;
struct pcl812_board {unsigned int n_aochan; scalar_t__ has_dio; } ;
struct comedi_device {scalar_t__ iobase; struct pcl812_private* private; struct pcl812_board* board_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 int PCL812_CTRL_DISABLE_TRIG ; 
 scalar_t__ PCL812_CTRL_REG ; 
 scalar_t__ PCL812_DO_LSB_REG ; 
 scalar_t__ PCL812_DO_MSB_REG ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct comedi_device *dev)
{
	const struct pcl812_board *board = dev->board_ptr;
	struct pcl812_private *devpriv = dev->private;
	unsigned int chan;

	/* disable analog input trigger */
	FUNC3(devpriv->mode_reg_int | PCL812_CTRL_DISABLE_TRIG,
	     dev->iobase + PCL812_CTRL_REG);
	FUNC4(dev);

	/*
	 * Invalidate last_ai_chanspec then set analog input to
	 * known channel/range.
	 */
	devpriv->last_ai_chanspec = FUNC0(16, 0, 0);
	FUNC5(dev, FUNC0(0, 0, 0), 0);

	/* set analog output channels to 0V */
	for (chan = 0; chan < board->n_aochan; chan++) {
		FUNC3(0, dev->iobase + FUNC1(chan));
		FUNC3(0, dev->iobase + FUNC2(chan));
	}

	/* set all digital outputs low */
	if (board->has_dio) {
		FUNC3(0, dev->iobase + PCL812_DO_MSB_REG);
		FUNC3(0, dev->iobase + PCL812_DO_LSB_REG);
	}
}