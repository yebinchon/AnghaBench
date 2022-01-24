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
struct usbdux_private {int /*<<< orphan*/  mut; int /*<<< orphan*/ * insn_buf; int /*<<< orphan*/ * dux_commands; } ;
struct comedi_subdevice {int /*<<< orphan*/  state; int /*<<< orphan*/  io_bits; } ;
struct comedi_insn {int n; } ;
struct comedi_device {struct usbdux_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  USBDUX_CMD_DIO_BITS ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_subdevice*,unsigned int*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct comedi_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
				struct comedi_subdevice *s,
				struct comedi_insn *insn,
				unsigned int *data)
{
	struct usbdux_private *devpriv = dev->private;
	int ret;

	FUNC2(&devpriv->mut);

	FUNC0(s, data);

	/* Always update the hardware. See the (*insn_config). */
	devpriv->dux_commands[1] = s->io_bits;
	devpriv->dux_commands[2] = s->state;

	/*
	 * This command also tells the firmware to return
	 * the digital input lines.
	 */
	ret = FUNC5(dev, USBDUX_CMD_DIO_BITS);
	if (ret < 0)
		goto dio_exit;
	ret = FUNC4(dev, USBDUX_CMD_DIO_BITS);
	if (ret < 0)
		goto dio_exit;

	data[1] = FUNC1(devpriv->insn_buf[1]);

dio_exit:
	FUNC3(&devpriv->mut);

	return ret ? ret : insn->n;
}