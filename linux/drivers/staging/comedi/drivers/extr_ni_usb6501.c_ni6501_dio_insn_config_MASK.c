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
 int /*<<< orphan*/  SET_PORT_DIR ; 
 int FUNC0 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev,
				  struct comedi_subdevice *s,
				  struct comedi_insn *insn,
				  unsigned int *data)
{
	int ret;

	ret = FUNC0(dev, s, insn, data, 0);
	if (ret)
		return ret;

	ret = FUNC1(dev, SET_PORT_DIR, s->io_bits, NULL);
	if (ret)
		return ret;

	return insn->n;
}