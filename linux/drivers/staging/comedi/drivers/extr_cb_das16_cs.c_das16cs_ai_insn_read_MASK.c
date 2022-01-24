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
struct das16cs_private {int misc1; int misc2; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ iobase; struct das16cs_private* private; } ;

/* Variables and functions */
 int AREF_DIFF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ DAS16CS_AI_DATA_REG ; 
 scalar_t__ DAS16CS_AI_MUX_REG ; 
 int FUNC3 (int) ; 
 int DAS16CS_MISC1_AI_CONV_MASK ; 
 int DAS16CS_MISC1_INTE ; 
 int DAS16CS_MISC1_INT_SRC_MASK ; 
 scalar_t__ DAS16CS_MISC1_REG ; 
 int DAS16CS_MISC1_SEDIFF ; 
 int DAS16CS_MISC2_AI_GAIN_1 ; 
 int DAS16CS_MISC2_AI_GAIN_2 ; 
 int DAS16CS_MISC2_AI_GAIN_4 ; 
 int DAS16CS_MISC2_AI_GAIN_8 ; 
 int DAS16CS_MISC2_AI_GAIN_MASK ; 
 int DAS16CS_MISC2_BME ; 
 scalar_t__ DAS16CS_MISC2_REG ; 
 int FUNC4 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  das16cs_ai_eoc ; 
 unsigned int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct comedi_device *dev,
				struct comedi_subdevice *s,
				struct comedi_insn *insn,
				unsigned int *data)
{
	struct das16cs_private *devpriv = dev->private;
	int chan = FUNC1(insn->chanspec);
	int range = FUNC2(insn->chanspec);
	int aref = FUNC0(insn->chanspec);
	int ret;
	int i;

	FUNC6(FUNC3(chan),
	     dev->iobase + DAS16CS_AI_MUX_REG);

	/* disable interrupts, software convert */
	devpriv->misc1 &= ~(DAS16CS_MISC1_INTE | DAS16CS_MISC1_INT_SRC_MASK |
			      DAS16CS_MISC1_AI_CONV_MASK);
	if (aref == AREF_DIFF)
		devpriv->misc1 &= ~DAS16CS_MISC1_SEDIFF;
	else
		devpriv->misc1 |= DAS16CS_MISC1_SEDIFF;
	FUNC6(devpriv->misc1, dev->iobase + DAS16CS_MISC1_REG);

	devpriv->misc2 &= ~(DAS16CS_MISC2_BME | DAS16CS_MISC2_AI_GAIN_MASK);
	switch (range) {
	case 0:
		devpriv->misc2 |= DAS16CS_MISC2_AI_GAIN_1;
		break;
	case 1:
		devpriv->misc2 |= DAS16CS_MISC2_AI_GAIN_2;
		break;
	case 2:
		devpriv->misc2 |= DAS16CS_MISC2_AI_GAIN_4;
		break;
	case 3:
		devpriv->misc2 |= DAS16CS_MISC2_AI_GAIN_8;
		break;
	}
	FUNC6(devpriv->misc2, dev->iobase + DAS16CS_MISC2_REG);

	for (i = 0; i < insn->n; i++) {
		FUNC6(0, dev->iobase + DAS16CS_AI_DATA_REG);

		ret = FUNC4(dev, s, insn, das16cs_ai_eoc, 0);
		if (ret)
			return ret;

		data[i] = FUNC5(dev->iobase + DAS16CS_AI_DATA_REG);
	}

	return i;
}