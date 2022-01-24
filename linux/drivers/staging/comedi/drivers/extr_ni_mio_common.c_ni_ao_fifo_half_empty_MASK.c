#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ni_board_struct {int ao_fifo_depth; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct ni_board_struct* board_ptr; } ;
struct TYPE_2__ {int /*<<< orphan*/  events; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_CB_OVERFLOW ; 
 unsigned int FUNC0 (struct comedi_subdevice*) ; 
 unsigned int FUNC1 (struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct comedi_subdevice*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
				 struct comedi_subdevice *s)
{
	const struct ni_board_struct *board = dev->board_ptr;
	unsigned int nbytes;
	unsigned int nsamples;

	nbytes = FUNC0(s);
	if (nbytes == 0) {
		s->async->events |= COMEDI_CB_OVERFLOW;
		return 0;
	}

	nsamples = FUNC1(s, nbytes);
	if (nsamples > board->ao_fifo_depth / 2)
		nsamples = board->ao_fifo_depth / 2;

	FUNC2(dev, s, nsamples);

	return 1;
}