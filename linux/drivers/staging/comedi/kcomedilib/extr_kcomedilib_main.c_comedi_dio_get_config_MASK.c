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
struct comedi_insn {int n; unsigned int subdev; int /*<<< orphan*/  chanspec; int /*<<< orphan*/  insn; } ;
struct comedi_device {int dummy; } ;
typedef  int /*<<< orphan*/  insn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INSN_CONFIG ; 
 unsigned int INSN_CONFIG_DIO_QUERY ; 
 int FUNC1 (struct comedi_device*,struct comedi_insn*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_insn*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct comedi_device *dev, unsigned int subdev,
			  unsigned int chan, unsigned int *io)
{
	struct comedi_insn insn;
	unsigned int data[2];
	int ret;

	FUNC2(&insn, 0, sizeof(insn));
	insn.insn = INSN_CONFIG;
	insn.n = 2;
	insn.subdev = subdev;
	insn.chanspec = FUNC0(chan, 0, 0);
	data[0] = INSN_CONFIG_DIO_QUERY;
	data[1] = 0;
	ret = FUNC1(dev, &insn, data);
	if (ret >= 0)
		*io = data[1];
	return ret;
}