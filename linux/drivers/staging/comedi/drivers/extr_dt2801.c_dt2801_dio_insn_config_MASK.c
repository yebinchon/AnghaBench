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
struct comedi_subdevice {scalar_t__ io_bits; } ;
struct comedi_insn {int n; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;

/* Variables and functions */
 int /*<<< orphan*/  DT_C_SET_DIGIN ; 
 int /*<<< orphan*/  DT_C_SET_DIGOUT ; 
 int FUNC0 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
				  struct comedi_subdevice *s,
				  struct comedi_insn *insn,
				  unsigned int *data)
{
	int ret;

	ret = FUNC0(dev, s, insn, data, 0xff);
	if (ret)
		return ret;

	FUNC1(dev, s->io_bits ? DT_C_SET_DIGOUT : DT_C_SET_DIGIN);
	FUNC2(dev, (s == &dev->subdevices[3]) ? 1 : 0);

	return insn->n;
}