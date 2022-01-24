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
struct vmk80xx_private {unsigned int* usb_rx_buf; int /*<<< orphan*/  limit_sem; int /*<<< orphan*/ * usb_tx_buf; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {struct vmk80xx_private* private; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int VMK8061_AO_REG ; 
 int /*<<< orphan*/  VMK8061_CMD_RD_AO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct comedi_device*) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
				struct comedi_subdevice *s,
				struct comedi_insn *insn,
				unsigned int *data)
{
	struct vmk80xx_private *devpriv = dev->private;
	int chan;
	int reg;
	int n;

	FUNC1(&devpriv->limit_sem);
	chan = FUNC0(insn->chanspec);

	reg = VMK8061_AO_REG - 1;

	devpriv->usb_tx_buf[0] = VMK8061_CMD_RD_AO;

	for (n = 0; n < insn->n; n++) {
		if (FUNC3(dev))
			break;

		data[n] = devpriv->usb_rx_buf[reg + chan];
	}

	FUNC2(&devpriv->limit_sem);

	return n;
}