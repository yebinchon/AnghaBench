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
struct labpc_private {int count; int current_transfer; int cmd1; int cmd3; int cmd4; int cmd2; int /*<<< orphan*/  (* write_byte ) (struct comedi_device*,int,int /*<<< orphan*/ ) ;struct comedi_8254* counter; scalar_t__ dma; } ;
struct labpc_boardinfo {scalar_t__ is_labpc1200; } ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int /*<<< orphan*/  spinlock; struct comedi_8254* pacer; struct labpc_private* private; struct labpc_boardinfo* board_ptr; } ;
struct comedi_cmd {unsigned int* chanlist; int chanlist_len; scalar_t__ stop_src; int stop_arg; int flags; scalar_t__ convert_src; scalar_t__ scan_begin_src; scalar_t__ start_src; } ;
struct comedi_async {struct comedi_cmd cmd; } ;
struct comedi_8254 {int divisor1; int divisor2; int /*<<< orphan*/  divisor; } ;
typedef  enum transfer_type { ____Placeholder_transfer_type } transfer_type ;
typedef  enum scan_mode { ____Placeholder_scan_mode } scan_mode ;

/* Variables and functions */
 unsigned int AREF_DIFF ; 
 int /*<<< orphan*/  CMD1_REG ; 
 int CMD1_SCANEN ; 
 int CMD2_HWTRIG ; 
 int CMD2_PRETRIG ; 
 int /*<<< orphan*/  CMD2_REG ; 
 int CMD2_SWTRIG ; 
 int CMD2_TBSEL ; 
 int CMD3_ERRINTEN ; 
 int CMD3_FIFOINTEN ; 
 int /*<<< orphan*/  CMD3_REG ; 
 int CMD4_ECLKRCV ; 
 int CMD4_EOIRCV ; 
 int CMD4_INTSCAN ; 
 int /*<<< orphan*/  CMD4_REG ; 
 int CMD4_SEDIFF ; 
 int CMDF_PRIORITY ; 
 int CMDF_WAKE_EOS ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 int I8254_BINARY ; 
 int I8254_MODE0 ; 
 int I8254_MODE2 ; 
 int I8254_MODE3 ; 
 int /*<<< orphan*/  INTERVAL_COUNT_REG ; 
 int /*<<< orphan*/  INTERVAL_STROBE_REG ; 
 int MODE_MULT_CHAN_DOWN ; 
 int MODE_MULT_CHAN_UP ; 
 scalar_t__ TRIG_COUNT ; 
 scalar_t__ TRIG_EXT ; 
 scalar_t__ TRIG_TIMER ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_8254*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_8254*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_8254*) ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_8254*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int fifo_half_full_transfer ; 
 int fifo_not_empty_transfer ; 
 int isa_dma_transfer ; 
 scalar_t__ FUNC7 (struct comedi_cmd*,int) ; 
 int FUNC8 (struct comedi_cmd*) ; 
 scalar_t__ FUNC9 (struct comedi_cmd*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct comedi_device*,int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC12 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct comedi_device*,struct comedi_subdevice*,int,int,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC15 (struct comedi_cmd*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 

__attribute__((used)) static int FUNC25(struct comedi_device *dev, struct comedi_subdevice *s)
{
	const struct labpc_boardinfo *board = dev->board_ptr;
	struct labpc_private *devpriv = dev->private;
	struct comedi_async *async = s->async;
	struct comedi_cmd *cmd = &async->cmd;
	enum scan_mode mode = FUNC8(cmd);
	unsigned int chanspec = (mode == MODE_MULT_CHAN_UP) ?
				cmd->chanlist[cmd->chanlist_len - 1] :
				cmd->chanlist[0];
	unsigned int chan = FUNC1(chanspec);
	unsigned int range = FUNC2(chanspec);
	unsigned int aref = FUNC0(chanspec);
	enum transfer_type xfer;
	unsigned long flags;

	/* make sure board is disabled before setting up acquisition */
	FUNC11(dev, s);

	/*  initialize software conversion count */
	if (cmd->stop_src == TRIG_COUNT)
		devpriv->count = cmd->stop_arg * cmd->chanlist_len;

	/*  setup hardware conversion counter */
	if (cmd->stop_src == TRIG_EXT) {
		/*
		 * load counter a1 with count of 3
		 * (pc+ manual says this is minimum allowed) using mode 0
		 */
		FUNC3(devpriv->counter, 1,
				 3, I8254_MODE0 | I8254_BINARY);
	} else	{
		/* just put counter a1 in mode 0 to set its output low */
		FUNC4(devpriv->counter, 1,
				     I8254_MODE0 | I8254_BINARY);
	}

	/* figure out what method we will use to transfer data */
	if (devpriv->dma &&
	    (cmd->flags & (CMDF_WAKE_EOS | CMDF_PRIORITY)) == 0) {
		/*
		 * dma unsafe at RT priority,
		 * and too much setup time for CMDF_WAKE_EOS
		 */
		xfer = isa_dma_transfer;
	} else if (board->is_labpc1200 &&
		   (cmd->flags & CMDF_WAKE_EOS) == 0 &&
		   (cmd->stop_src != TRIG_COUNT || devpriv->count > 256)) {
		/*
		 * pc-plus has no fifo-half full interrupt
		 * wake-end-of-scan should interrupt on fifo not empty
		 * make sure we are taking more than just a few points
		 */
		xfer = fifo_half_full_transfer;
	} else {
		xfer = fifo_not_empty_transfer;
	}
	devpriv->current_transfer = xfer;

	FUNC10(dev, mode, chan, range, aref);

	FUNC13(dev, s, mode, xfer, range, aref,
			     (cmd->stop_src == TRIG_EXT));

	/* manual says to set scan enable bit on second pass */
	if (mode == MODE_MULT_CHAN_UP || mode == MODE_MULT_CHAN_DOWN) {
		devpriv->cmd1 |= CMD1_SCANEN;
		/*
		 * Need a brief delay before enabling scan, or scan
		 * list will get screwed when you switch between
		 * scan up to scan down mode - dunno why.
		 */
		FUNC24(1);
		devpriv->write_byte(dev, devpriv->cmd1, CMD1_REG);
	}

	devpriv->write_byte(dev, cmd->chanlist_len, INTERVAL_COUNT_REG);
	/*  load count */
	devpriv->write_byte(dev, 0x1, INTERVAL_STROBE_REG);

	if (cmd->convert_src == TRIG_TIMER ||
	    cmd->scan_begin_src == TRIG_TIMER) {
		struct comedi_8254 *pacer = dev->pacer;
		struct comedi_8254 *counter = devpriv->counter;

		FUNC5(pacer);

		/* set up pacing */
		FUNC3(pacer, 0, pacer->divisor1,
				 I8254_MODE3 | I8254_BINARY);

		/* set up conversion pacing */
		FUNC4(counter, 0, I8254_MODE2 | I8254_BINARY);
		if (FUNC7(cmd, mode))
			FUNC6(counter, 0, pacer->divisor);

		/* set up scan pacing */
		if (FUNC9(cmd, mode))
			FUNC3(pacer, 1, pacer->divisor2,
					 I8254_MODE2 | I8254_BINARY);
	}

	FUNC12(dev);

	if (xfer == isa_dma_transfer)
		FUNC14(dev, s);

	/*  enable error interrupts */
	devpriv->cmd3 |= CMD3_ERRINTEN;
	/*  enable fifo not empty interrupt? */
	if (xfer == fifo_not_empty_transfer)
		devpriv->cmd3 |= CMD3_FIFOINTEN;
	devpriv->write_byte(dev, devpriv->cmd3, CMD3_REG);

	/*  setup any external triggering/pacing (cmd4 register) */
	devpriv->cmd4 = 0;
	if (cmd->convert_src != TRIG_EXT)
		devpriv->cmd4 |= CMD4_ECLKRCV;
	/*
	 * XXX should discard first scan when using interval scanning
	 * since manual says it is not synced with scan clock.
	 */
	if (!FUNC15(cmd, mode)) {
		devpriv->cmd4 |= CMD4_INTSCAN;
		if (cmd->scan_begin_src == TRIG_EXT)
			devpriv->cmd4 |= CMD4_EOIRCV;
	}
	/*  single-ended/differential */
	if (aref == AREF_DIFF)
		devpriv->cmd4 |= CMD4_SEDIFF;
	devpriv->write_byte(dev, devpriv->cmd4, CMD4_REG);

	/*  startup acquisition */

	FUNC16(&dev->spinlock, flags);

	/* use 2 cascaded counters for pacing */
	devpriv->cmd2 |= CMD2_TBSEL;

	devpriv->cmd2 &= ~(CMD2_SWTRIG | CMD2_HWTRIG | CMD2_PRETRIG);
	if (cmd->start_src == TRIG_EXT)
		devpriv->cmd2 |= CMD2_HWTRIG;
	else
		devpriv->cmd2 |= CMD2_SWTRIG;
	if (cmd->stop_src == TRIG_EXT)
		devpriv->cmd2 |= (CMD2_HWTRIG | CMD2_PRETRIG);

	devpriv->write_byte(dev, devpriv->cmd2, CMD2_REG);

	FUNC17(&dev->spinlock, flags);

	return 0;
}