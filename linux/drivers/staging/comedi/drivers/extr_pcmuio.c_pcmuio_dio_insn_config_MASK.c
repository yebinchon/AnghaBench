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
struct comedi_subdevice {int /*<<< orphan*/  io_bits; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 unsigned int INSN_CONFIG_DIO_INPUT ; 
 int FUNC0 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct comedi_subdevice*) ; 
 int FUNC2 (struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
				  struct comedi_subdevice *s,
				  struct comedi_insn *insn,
				  unsigned int *data)
{
	int asic = FUNC1(s);
	int port = FUNC2(s);
	int ret;

	ret = FUNC0(dev, s, insn, data, 0);
	if (ret)
		return ret;

	if (data[0] == INSN_CONFIG_DIO_INPUT)
		FUNC3(dev, s->io_bits, asic, 0, port);

	return insn->n;
}