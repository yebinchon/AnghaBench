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
struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ iobase; int /*<<< orphan*/  class_dev; } ;

/* Variables and functions */
 unsigned int APCI3501_AO_CTRL_BIPOLAR ; 
 scalar_t__ APCI3501_AO_CTRL_STATUS_REG ; 
 unsigned int APCI3501_AO_DATA_BIPOLAR ; 
 unsigned int FUNC0 (unsigned int) ; 
 scalar_t__ APCI3501_AO_DATA_REG ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int FUNC4 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct comedi_device *dev,
				  struct comedi_subdevice *s,
				  struct comedi_insn *insn,
				  unsigned int *data)
{
	unsigned int chan = FUNC2(insn->chanspec);
	unsigned int range = FUNC3(insn->chanspec);
	unsigned int cfg = FUNC0(chan);
	int ret;
	int i;

	/*
	 * All analog output channels have the same output range.
	 *	14-bit bipolar: 0-10V
	 *	13-bit unipolar: +/-10V
	 * Changing the range of one channel changes all of them!
	 */
	if (range) {
		FUNC6(0, dev->iobase + APCI3501_AO_CTRL_STATUS_REG);
	} else {
		cfg |= APCI3501_AO_DATA_BIPOLAR;
		FUNC6(APCI3501_AO_CTRL_BIPOLAR,
		     dev->iobase + APCI3501_AO_CTRL_STATUS_REG);
	}

	for (i = 0; i < insn->n; i++) {
		unsigned int val = data[i];

		if (range == 1) {
			if (data[i] > 0x1fff) {
				FUNC5(dev->class_dev,
					"Unipolar resolution is only 13-bits\n");
				return -EINVAL;
			}
		}

		ret = FUNC4(dev);
		if (ret)
			return ret;

		FUNC6(cfg | FUNC1(val),
		     dev->iobase + APCI3501_AO_DATA_REG);

		s->readback[chan] = val;
	}

	return insn->n;
}