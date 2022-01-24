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
struct das08_private_struct {int /*<<< orphan*/ * pg_gainlist; int /*<<< orphan*/  do_mux_bits; } ;
struct das08_board_struct {int ai_nbits; scalar_t__ ai_encoding; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int /*<<< orphan*/  class_dev; scalar_t__ iobase; int /*<<< orphan*/  spinlock; struct das08_private_struct* private; struct das08_board_struct* board_ptr; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ DAS08_AI_LSB_REG ; 
 scalar_t__ DAS08_AI_MSB_REG ; 
 scalar_t__ DAS08_AI_TRIG_REG ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  DAS08_CONTROL_MUX_MASK ; 
 scalar_t__ DAS08_CONTROL_REG ; 
 scalar_t__ DAS08_GAIN_REG ; 
 int FUNC4 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  das08_ai_eoc ; 
 scalar_t__ das08_encode12 ; 
 scalar_t__ das08_encode16 ; 
 scalar_t__ das08_pcm_encode12 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct comedi_device *dev,
			      struct comedi_subdevice *s,
			      struct comedi_insn *insn, unsigned int *data)
{
	const struct das08_board_struct *board = dev->board_ptr;
	struct das08_private_struct *devpriv = dev->private;
	int n;
	int chan;
	int range;
	int lsb, msb;
	int ret;

	chan = FUNC1(insn->chanspec);
	range = FUNC2(insn->chanspec);

	/* clear crap */
	FUNC7(dev->iobase + DAS08_AI_LSB_REG);
	FUNC7(dev->iobase + DAS08_AI_MSB_REG);

	/* set multiplexer */
	/* lock to prevent race with digital output */
	FUNC10(&dev->spinlock);
	devpriv->do_mux_bits &= ~DAS08_CONTROL_MUX_MASK;
	devpriv->do_mux_bits |= FUNC3(chan);
	FUNC8(devpriv->do_mux_bits, dev->iobase + DAS08_CONTROL_REG);
	FUNC11(&dev->spinlock);

	if (devpriv->pg_gainlist) {
		/* set gain/range */
		range = FUNC2(insn->chanspec);
		FUNC8(devpriv->pg_gainlist[range],
		     dev->iobase + DAS08_GAIN_REG);
	}

	for (n = 0; n < insn->n; n++) {
		/* clear over-range bits for 16-bit boards */
		if (board->ai_nbits == 16)
			if (FUNC7(dev->iobase + DAS08_AI_MSB_REG) & 0x80)
				FUNC6(dev->class_dev, "over-range\n");

		/* trigger conversion */
		FUNC9(0, dev->iobase + DAS08_AI_TRIG_REG);

		ret = FUNC4(dev, s, insn, das08_ai_eoc, 0);
		if (ret)
			return ret;

		msb = FUNC7(dev->iobase + DAS08_AI_MSB_REG);
		lsb = FUNC7(dev->iobase + DAS08_AI_LSB_REG);
		if (board->ai_encoding == das08_encode12) {
			data[n] = (lsb >> 4) | (msb << 4);
		} else if (board->ai_encoding == das08_pcm_encode12) {
			data[n] = (msb << 8) + lsb;
		} else if (board->ai_encoding == das08_encode16) {
			/*
			 * "JR" 16-bit boards are sign-magnitude.
			 *
			 * XXX The manual seems to imply that 0 is full-scale
			 * negative and 65535 is full-scale positive, but the
			 * original COMEDI patch to add support for the
			 * DAS08/JR/16 and DAS08/JR/16-AO boards have it
			 * encoded as sign-magnitude.  Assume the original
			 * COMEDI code is correct for now.
			 */
			unsigned int magnitude = lsb | ((msb & 0x7f) << 8);

			/*
			 * MSB bit 7 is 0 for negative, 1 for positive voltage.
			 * COMEDI 16-bit bipolar data value for 0V is 0x8000.
			 */
			if (msb & 0x80)
				data[n] = FUNC0(15) + magnitude;
			else
				data[n] = FUNC0(15) - magnitude;
		} else {
			FUNC5(dev->class_dev, "bug! unknown ai encoding\n");
			return -1;
		}
	}

	return n;
}