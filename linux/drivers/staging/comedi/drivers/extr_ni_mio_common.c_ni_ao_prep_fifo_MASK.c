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
struct ni_private {scalar_t__ is_6xxx; } ;
struct ni_board_struct {unsigned int ao_fifo_depth; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct ni_private* private; struct ni_board_struct* board_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  NI611X_AO_FIFO_OFFSET_LOAD_REG ; 
 int /*<<< orphan*/  NISTC_DAC_FIFO_CLR_REG ; 
 unsigned int FUNC0 (struct comedi_subdevice*) ; 
 unsigned int FUNC1 (struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
			   struct comedi_subdevice *s)
{
	const struct ni_board_struct *board = dev->board_ptr;
	struct ni_private *devpriv = dev->private;
	unsigned int nbytes;
	unsigned int nsamples;

	/* reset fifo */
	FUNC4(dev, 1, NISTC_DAC_FIFO_CLR_REG);
	if (devpriv->is_6xxx)
		FUNC3(dev, 0x6, NI611X_AO_FIFO_OFFSET_LOAD_REG);

	/* load some data */
	nbytes = FUNC0(s);
	if (nbytes == 0)
		return 0;

	nsamples = FUNC1(s, nbytes);
	if (nsamples > board->ao_fifo_depth)
		nsamples = board->ao_fifo_depth;

	FUNC2(dev, s, nsamples);

	return nsamples;
}