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
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PCL818_CTRL_REG ; 
 int /*<<< orphan*/  PCL818_CTRL_SOFT_TRIG ; 
 int FUNC2 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*) ; 
 int /*<<< orphan*/  pcl818_ai_eoc ; 
 unsigned int FUNC5 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct comedi_device*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct comedi_device*) ; 

__attribute__((used)) static int FUNC9(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_insn *insn,
			       unsigned int *data)
{
	unsigned int chan = FUNC0(insn->chanspec);
	unsigned int range = FUNC1(insn->chanspec);
	int ret = 0;
	int i;

	FUNC3(PCL818_CTRL_SOFT_TRIG, dev->iobase + PCL818_CTRL_REG);

	FUNC6(dev, chan, range);
	FUNC7(dev, chan, chan);

	for (i = 0; i < insn->n; i++) {
		FUNC4(dev);
		FUNC8(dev);

		ret = FUNC2(dev, s, insn, pcl818_ai_eoc, 0);
		if (ret)
			break;

		data[i] = FUNC5(dev, s, NULL);
	}
	FUNC4(dev);

	return ret ? ret : insn->n;
}