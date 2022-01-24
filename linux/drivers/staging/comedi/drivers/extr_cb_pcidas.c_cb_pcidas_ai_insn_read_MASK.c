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
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int chanspec; int n; } ;
struct comedi_device {struct cb_pcidas_private* private; } ;
struct cb_pcidas_private {scalar_t__ pcibar2; scalar_t__ pcibar1; int /*<<< orphan*/  calib_src; } ;

/* Variables and functions */
 unsigned int AREF_DIFF ; 
 int CR_ALT_SOURCE ; 
 unsigned int FUNC0 (int) ; 
 unsigned int FUNC1 (int) ; 
 unsigned int FUNC2 (int) ; 
 unsigned int FUNC3 (unsigned int) ; 
 scalar_t__ PCIDAS_AI_DATA_REG ; 
 scalar_t__ PCIDAS_AI_FIFO_CLR_REG ; 
 unsigned int FUNC4 (unsigned int) ; 
 scalar_t__ PCIDAS_AI_REG ; 
 unsigned int PCIDAS_AI_SE ; 
 unsigned int PCIDAS_AI_UNIP ; 
 unsigned int PCIDAS_CALIB_EN ; 
 scalar_t__ PCIDAS_CALIB_REG ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cb_pcidas_ai_eoc ; 
 scalar_t__ FUNC6 (struct comedi_subdevice*,unsigned int) ; 
 int FUNC7 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct comedi_device *dev,
				  struct comedi_subdevice *s,
				  struct comedi_insn *insn,
				  unsigned int *data)
{
	struct cb_pcidas_private *devpriv = dev->private;
	unsigned int chan = FUNC1(insn->chanspec);
	unsigned int range = FUNC2(insn->chanspec);
	unsigned int aref = FUNC0(insn->chanspec);
	unsigned int bits;
	int ret;
	int n;

	/* enable calibration input if appropriate */
	if (insn->chanspec & CR_ALT_SOURCE) {
		FUNC9(PCIDAS_CALIB_EN | FUNC5(devpriv->calib_src),
		     devpriv->pcibar1 + PCIDAS_CALIB_REG);
		chan = 0;
	} else {
		FUNC9(0, devpriv->pcibar1 + PCIDAS_CALIB_REG);
	}

	/* set mux limits and gain */
	bits = FUNC3(chan) | FUNC4(range);
	/* set unipolar/bipolar */
	if (FUNC6(s, range))
		bits |= PCIDAS_AI_UNIP;
	/* set single-ended/differential */
	if (aref != AREF_DIFF)
		bits |= PCIDAS_AI_SE;
	FUNC9(bits, devpriv->pcibar1 + PCIDAS_AI_REG);

	/* clear fifo */
	FUNC9(0, devpriv->pcibar2 + PCIDAS_AI_FIFO_CLR_REG);

	/* convert n samples */
	for (n = 0; n < insn->n; n++) {
		/* trigger conversion */
		FUNC9(0, devpriv->pcibar2 + PCIDAS_AI_DATA_REG);

		/* wait for conversion to end */
		ret = FUNC7(dev, s, insn, cb_pcidas_ai_eoc, 0);
		if (ret)
			return ret;

		/* read data */
		data[n] = FUNC8(devpriv->pcibar2 + PCIDAS_AI_DATA_REG);
	}

	/* return the number of samples read/written */
	return n;
}