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
struct das16_private_struct {scalar_t__ extra_iobase; } ;
struct das16_board {int size; } ;
struct comedi_device {scalar_t__ iobase; struct das16_private_struct* private; struct das16_board* board_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev)
{
	const struct das16_board *board = dev->board_ptr;
	struct das16_private_struct *devpriv = dev->private;

	if (devpriv) {
		if (dev->iobase)
			FUNC2(dev);
		FUNC1(dev);

		if (devpriv->extra_iobase)
			FUNC3(devpriv->extra_iobase,
				       board->size & 0x3ff);
	}

	FUNC0(dev);
}