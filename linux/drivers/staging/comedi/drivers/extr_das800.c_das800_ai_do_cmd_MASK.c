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
struct das800_board {int resolution; } ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  pacer; scalar_t__ iobase; struct das800_board* board_ptr; } ;
struct comedi_cmd {unsigned int chanlist_len; scalar_t__ start_src; scalar_t__ convert_src; int /*<<< orphan*/ * chanlist; } ;
struct comedi_async {struct comedi_cmd cmd; } ;

/* Variables and functions */
 int CASC ; 
 int /*<<< orphan*/  CONV_CONTROL ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ DAS800_GAIN ; 
 int DTEN ; 
 int EACS ; 
 int IEOC ; 
 int ITE ; 
 int /*<<< orphan*/  SCAN_LIMITS ; 
 scalar_t__ TRIG_EXT ; 
 scalar_t__ TRIG_TIMER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct comedi_device *dev,
			    struct comedi_subdevice *s)
{
	const struct das800_board *board = dev->board_ptr;
	struct comedi_async *async = s->async;
	struct comedi_cmd *cmd = &async->cmd;
	unsigned int gain = FUNC1(cmd->chanlist[0]);
	unsigned int start_chan = FUNC0(cmd->chanlist[0]);
	unsigned int end_chan = (start_chan + cmd->chanlist_len - 1) % 8;
	unsigned int scan_chans = (end_chan << 3) | start_chan;
	int conv_bits;
	unsigned long irq_flags;

	FUNC4(dev);

	FUNC8(&dev->spinlock, irq_flags);
	/* set scan limits */
	FUNC6(dev, scan_chans, SCAN_LIMITS);
	FUNC9(&dev->spinlock, irq_flags);

	/* set gain */
	if (board->resolution == 12 && gain > 0)
		gain += 0x7;
	gain &= 0xf;
	FUNC7(gain, dev->iobase + DAS800_GAIN);

	/* enable auto channel scan, send interrupts on end of conversion
	 * and set clock source to internal or external
	 */
	conv_bits = 0;
	conv_bits |= EACS | IEOC;
	if (cmd->start_src == TRIG_EXT)
		conv_bits |= DTEN;
	if (cmd->convert_src == TRIG_TIMER) {
		conv_bits |= CASC | ITE;
		FUNC3(dev->pacer);
		FUNC2(dev->pacer, 1, 2, true);
	}

	FUNC8(&dev->spinlock, irq_flags);
	FUNC6(dev, conv_bits, CONV_CONTROL);
	FUNC9(&dev->spinlock, irq_flags);

	FUNC5(dev);
	return 0;
}