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
struct comedi_subdevice {int subdev_flags; int n_chan; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ iobase; int /*<<< orphan*/  class_dev; } ;

/* Variables and functions */
 unsigned int AREF_DIFF ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ ME4000_AI_CHANNEL_LIST_REG ; 
 scalar_t__ ME4000_AI_CHAN_PRE_TIMER_REG ; 
 scalar_t__ ME4000_AI_CHAN_TIMER_REG ; 
 unsigned int ME4000_AI_CTRL_CHANNEL_FIFO ; 
 unsigned int ME4000_AI_CTRL_DATA_FIFO ; 
 scalar_t__ ME4000_AI_CTRL_REG ; 
 unsigned int ME4000_AI_LIST_INPUT_DIFFERENTIAL ; 
 unsigned int ME4000_AI_LIST_LAST_ENTRY ; 
 unsigned int FUNC3 (unsigned int) ; 
 unsigned int ME4000_AI_MIN_TICKS ; 
 scalar_t__ ME4000_AI_START_REG ; 
 int SDF_DIFF ; 
 unsigned int FUNC4 (struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_subdevice*,unsigned int) ; 
 int FUNC6 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  me4000_ai_eoc ; 
 unsigned int FUNC9 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC10 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_insn *insn,
			       unsigned int *data)
{
	unsigned int chan = FUNC1(insn->chanspec);
	unsigned int range = FUNC2(insn->chanspec);
	unsigned int aref = FUNC0(insn->chanspec);
	unsigned int entry;
	int ret = 0;
	int i;

	entry = chan | FUNC3(range);
	if (aref == AREF_DIFF) {
		if (!(s->subdev_flags & SDF_DIFF)) {
			FUNC7(dev->class_dev,
				"Differential inputs are not available\n");
			return -EINVAL;
		}

		if (!FUNC5(s, range)) {
			FUNC7(dev->class_dev,
				"Range must be bipolar when aref = diff\n");
			return -EINVAL;
		}

		if (chan >= (s->n_chan / 2)) {
			FUNC7(dev->class_dev,
				"Analog input is not available\n");
			return -EINVAL;
		}
		entry |= ME4000_AI_LIST_INPUT_DIFFERENTIAL;
	}

	entry |= ME4000_AI_LIST_LAST_ENTRY;

	/* Enable channel list and data fifo for single acquisition mode */
	FUNC11(ME4000_AI_CTRL_CHANNEL_FIFO | ME4000_AI_CTRL_DATA_FIFO,
	     dev->iobase + ME4000_AI_CTRL_REG);

	/* Generate channel list entry */
	FUNC11(entry, dev->iobase + ME4000_AI_CHANNEL_LIST_REG);

	/* Set the timer to maximum sample rate */
	FUNC11(ME4000_AI_MIN_TICKS, dev->iobase + ME4000_AI_CHAN_TIMER_REG);
	FUNC11(ME4000_AI_MIN_TICKS, dev->iobase + ME4000_AI_CHAN_PRE_TIMER_REG);

	for (i = 0; i < insn->n; i++) {
		unsigned int val;

		/* start conversion by dummy read */
		FUNC8(dev->iobase + ME4000_AI_START_REG);

		ret = FUNC6(dev, s, insn, me4000_ai_eoc, 0);
		if (ret)
			break;

		val = FUNC9(dev, s);
		data[i] = FUNC4(s, val);
	}

	FUNC10(dev);

	return ret ? ret : insn->n;
}