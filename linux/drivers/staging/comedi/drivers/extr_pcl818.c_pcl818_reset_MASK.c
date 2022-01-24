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
struct pcl818_board {unsigned int n_aochan; scalar_t__ has_fifo; } ;
struct comedi_device {scalar_t__ iobase; struct pcl818_board* board_ptr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ PCL818_CNTENABLE_REG ; 
 int /*<<< orphan*/  PCL818_CTRL_DISABLE_TRIG ; 
 scalar_t__ PCL818_CTRL_REG ; 
 scalar_t__ PCL818_DO_DI_LSB_REG ; 
 scalar_t__ PCL818_DO_DI_MSB_REG ; 
 scalar_t__ PCL818_FI_ENABLE ; 
 scalar_t__ PCL818_FI_FLUSH ; 
 scalar_t__ PCL818_FI_INTCLR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct comedi_device *dev)
{
	const struct pcl818_board *board = dev->board_ptr;
	unsigned int chan;

	/* flush and disable the FIFO */
	if (board->has_fifo) {
		FUNC2(0, dev->iobase + PCL818_FI_INTCLR);
		FUNC2(0, dev->iobase + PCL818_FI_FLUSH);
		FUNC2(0, dev->iobase + PCL818_FI_ENABLE);
	}

	/* disable analog input trigger */
	FUNC2(PCL818_CTRL_DISABLE_TRIG, dev->iobase + PCL818_CTRL_REG);
	FUNC3(dev);

	FUNC4(dev, 0, 0);

	/* stop pacer */
	FUNC2(0, dev->iobase + PCL818_CNTENABLE_REG);

	/* set analog output channels to 0V */
	for (chan = 0; chan < board->n_aochan; chan++) {
		FUNC2(0, dev->iobase + FUNC0(chan));
		FUNC2(0, dev->iobase + FUNC1(chan));
	}

	/* set all digital outputs low */
	FUNC2(0, dev->iobase + PCL818_DO_DI_MSB_REG);
	FUNC2(0, dev->iobase + PCL818_DO_DI_LSB_REG);
}