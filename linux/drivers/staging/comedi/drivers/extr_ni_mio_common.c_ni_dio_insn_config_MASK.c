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
struct ni_private {int /*<<< orphan*/  dio_control; } ;
struct comedi_subdevice {int /*<<< orphan*/  io_bits; } ;
struct comedi_insn {int n; } ;
struct comedi_device {struct ni_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NISTC_DIO_CTRL_DIR_MASK ; 
 int /*<<< orphan*/  NISTC_DIO_CTRL_REG ; 
 int FUNC1 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
			      struct comedi_subdevice *s,
			      struct comedi_insn *insn,
			      unsigned int *data)
{
	struct ni_private *devpriv = dev->private;
	int ret;

	ret = FUNC1(dev, s, insn, data, 0);
	if (ret)
		return ret;

	devpriv->dio_control &= ~NISTC_DIO_CTRL_DIR_MASK;
	devpriv->dio_control |= FUNC0(s->io_bits);
	FUNC2(dev, devpriv->dio_control, NISTC_DIO_CTRL_REG);

	return insn->n;
}