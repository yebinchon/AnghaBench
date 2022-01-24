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
struct comedi_insn {unsigned int chanspec; int n; unsigned int subdev; int /*<<< orphan*/  insn; } ;
struct comedi_device {int dummy; } ;
typedef  int /*<<< orphan*/  insn ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  INSN_BITS ; 
 int FUNC1 (struct comedi_device*,struct comedi_insn*,unsigned int*) ; 
 unsigned int FUNC2 (struct comedi_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_insn*,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct comedi_device *dev, unsigned int subdev,
			 unsigned int mask, unsigned int *bits,
			 unsigned int base_channel)
{
	struct comedi_insn insn;
	unsigned int data[2];
	unsigned int n_chan;
	unsigned int shift;
	int ret;

	base_channel = FUNC0(base_channel);
	n_chan = FUNC2(dev, subdev);
	if (base_channel >= n_chan)
		return -EINVAL;

	FUNC3(&insn, 0, sizeof(insn));
	insn.insn = INSN_BITS;
	insn.chanspec = base_channel;
	insn.n = 2;
	insn.subdev = subdev;

	data[0] = mask;
	data[1] = *bits;

	/*
	 * Most drivers ignore the base channel in insn->chanspec.
	 * Fix this here if the subdevice has <= 32 channels.
	 */
	if (n_chan <= 32) {
		shift = base_channel;
		if (shift) {
			insn.chanspec = 0;
			data[0] <<= shift;
			data[1] <<= shift;
		}
	} else {
		shift = 0;
	}

	ret = FUNC1(dev, &insn, data);
	*bits = data[1] >> shift;
	return ret;
}