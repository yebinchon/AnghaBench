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
struct comedi_subdevice {int n_chan; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 unsigned int AREF_DIFF ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 scalar_t__ DAS6402_AI_MUX_REG ; 
 scalar_t__ DAS6402_CTRL_REG ; 
 int /*<<< orphan*/  DAS6402_CTRL_SOFT_TRIG ; 
 int /*<<< orphan*/  DAS6402_MODE_POLLED ; 
 int EINVAL ; 
 int FUNC4 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*) ; 
 int /*<<< orphan*/  das6402_ai_eoc ; 
 unsigned int FUNC6 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC7 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct comedi_device *dev,
				struct comedi_subdevice *s,
				struct comedi_insn *insn,
				unsigned int *data)
{
	unsigned int chan = FUNC1(insn->chanspec);
	unsigned int aref = FUNC0(insn->chanspec);
	int ret;
	int i;

	if (aref == AREF_DIFF && chan > (s->n_chan / 2))
		return -EINVAL;

	/* enable software conversion trigger */
	FUNC9(DAS6402_CTRL_SOFT_TRIG, dev->iobase + DAS6402_CTRL_REG);

	FUNC7(dev, s, insn->chanspec, DAS6402_MODE_POLLED);

	/* load the mux for single channel conversion */
	FUNC10(FUNC2(chan) | FUNC3(chan),
	     dev->iobase + DAS6402_AI_MUX_REG);

	for (i = 0; i < insn->n; i++) {
		FUNC5(dev);
		FUNC8(dev);

		ret = FUNC4(dev, s, insn, das6402_ai_eoc, 0);
		if (ret)
			break;

		data[i] = FUNC6(dev, s);
	}

	FUNC5(dev);

	return insn->n;
}