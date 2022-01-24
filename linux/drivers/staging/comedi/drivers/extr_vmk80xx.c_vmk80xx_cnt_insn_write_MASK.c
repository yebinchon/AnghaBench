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
struct vmk80xx_private {unsigned long* usb_tx_buf; int /*<<< orphan*/  limit_sem; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {struct vmk80xx_private* private; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int VMK8055_CMD_DEB1_TIME ; 
 int VMK8055_CMD_DEB2_TIME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct comedi_device*,int) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
				  struct comedi_subdevice *s,
				  struct comedi_insn *insn,
				  unsigned int *data)
{
	struct vmk80xx_private *devpriv = dev->private;
	unsigned long debtime;
	unsigned long val;
	int chan;
	int cmd;
	int n;

	FUNC1(&devpriv->limit_sem);
	chan = FUNC0(insn->chanspec);

	if (!chan)
		cmd = VMK8055_CMD_DEB1_TIME;
	else
		cmd = VMK8055_CMD_DEB2_TIME;

	for (n = 0; n < insn->n; n++) {
		debtime = data[n];
		if (debtime == 0)
			debtime = 1;

		/* TODO: Prevent overflows */
		if (debtime > 7450)
			debtime = 7450;

		val = FUNC2(debtime * 1000 / 115);
		if (((val + 1) * val) < debtime * 1000 / 115)
			val += 1;

		devpriv->usb_tx_buf[6 + chan] = val;

		if (FUNC4(dev, cmd))
			break;
	}

	FUNC3(&devpriv->limit_sem);

	return n;
}