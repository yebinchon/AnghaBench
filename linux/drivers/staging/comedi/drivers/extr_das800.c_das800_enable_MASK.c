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
struct das800_private {int do_bits; } ;
struct das800_board {int resolution; } ;
struct comedi_device {int /*<<< orphan*/  spinlock; scalar_t__ iobase; struct das800_private* private; struct das800_board* board_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIO_ENHF ; 
 int /*<<< orphan*/  CONTROL1 ; 
 int CONTROL1_INTE ; 
 int /*<<< orphan*/  CONV_CONTROL ; 
 int CONV_HCEN ; 
 scalar_t__ DAS800_GAIN ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev)
{
	const struct das800_board *board = dev->board_ptr;
	struct das800_private *devpriv = dev->private;
	unsigned long irq_flags;

	FUNC2(&dev->spinlock, irq_flags);
	/*  enable fifo-half full interrupts for cio-das802/16 */
	if (board->resolution == 16)
		FUNC1(CIO_ENHF, dev->iobase + DAS800_GAIN);
	/* enable hardware triggering */
	FUNC0(dev, CONV_HCEN, CONV_CONTROL);
	/* enable card's interrupt */
	FUNC0(dev, CONTROL1_INTE | devpriv->do_bits, CONTROL1);
	FUNC3(&dev->spinlock, irq_flags);
}