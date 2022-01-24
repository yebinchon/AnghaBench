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
struct rtd_private {scalar_t__ las1; } ;
struct comedi_subdevice {unsigned short maxdata; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ mmio; struct rtd_private* private; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ LAS0_ADC ; 
 scalar_t__ LAS0_ADC_CONVERSION ; 
 scalar_t__ LAS0_ADC_FIFO_CLEAR ; 
 scalar_t__ LAS1_ADC_FIFO ; 
 unsigned short FUNC1 (struct comedi_subdevice*,unsigned short) ; 
 scalar_t__ FUNC2 (struct comedi_subdevice*,unsigned int) ; 
 int FUNC3 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned short FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  rtd_ai_eoc ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct comedi_device *dev,
			struct comedi_subdevice *s, struct comedi_insn *insn,
			unsigned int *data)
{
	struct rtd_private *devpriv = dev->private;
	unsigned int range = FUNC0(insn->chanspec);
	int ret;
	int n;

	/* clear any old fifo data */
	FUNC6(0, dev->mmio + LAS0_ADC_FIFO_CLEAR);

	/* write channel to multiplexer and clear channel gain table */
	FUNC5(dev, 1, &insn->chanspec);

	/* ADC conversion trigger source: SOFTWARE */
	FUNC6(0, dev->mmio + LAS0_ADC_CONVERSION);

	/* convert n samples */
	for (n = 0; n < insn->n; n++) {
		unsigned short d;
		/* trigger conversion */
		FUNC7(0, dev->mmio + LAS0_ADC);

		ret = FUNC3(dev, s, insn, rtd_ai_eoc, 0);
		if (ret)
			return ret;

		/* read data */
		d = FUNC4(devpriv->las1 + LAS1_ADC_FIFO);
		d >>= 3;	/* low 3 bits are marker lines */

		/* convert bipolar data to comedi unsigned data */
		if (FUNC2(s, range))
			d = FUNC1(s, d);

		data[n] = d & s->maxdata;
	}

	/* return the number of samples read/written */
	return n;
}