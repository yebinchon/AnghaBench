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
 int /*<<< orphan*/  PCL711_MODE_SOFTTRIG ; 
 int /*<<< orphan*/  PCL711_SOFTTRIG ; 
 scalar_t__ PCL711_SOFTTRIG_REG ; 
 int FUNC0 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  pcl711_ai_eoc ; 
 unsigned int FUNC2 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_insn *insn,
			       unsigned int *data)
{
	int ret;
	int i;

	FUNC4(dev, s, insn->chanspec);

	FUNC3(dev, PCL711_MODE_SOFTTRIG);

	for (i = 0; i < insn->n; i++) {
		FUNC1(PCL711_SOFTTRIG, dev->iobase + PCL711_SOFTTRIG_REG);

		ret = FUNC0(dev, s, insn, pcl711_ai_eoc, 0);
		if (ret)
			return ret;

		data[i] = FUNC2(dev, s);
	}

	return insn->n;
}