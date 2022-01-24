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
struct pcidas64_private {scalar_t__ main_iobase; int /*<<< orphan*/  dac_control1_bits; } ;
struct comedi_device {struct pcidas64_private* private; } ;
struct comedi_cmd {int chanlist_len; int /*<<< orphan*/ * chanlist; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ DAC_CONTROL1_REG ; 
 int /*<<< orphan*/  DAC_SW_GATE_BIT ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev,
				 const struct comedi_cmd *cmd)
{
	struct pcidas64_private *devpriv = dev->private;
	int i;

	for (i = 0; i < cmd->chanlist_len; i++) {
		int channel, range;

		channel = FUNC0(cmd->chanlist[i]);
		range = FUNC1(cmd->chanlist[i]);
		FUNC2(dev, &devpriv->dac_control1_bits, channel,
				   range);
	}
	devpriv->dac_control1_bits |= DAC_SW_GATE_BIT;
	FUNC3(devpriv->dac_control1_bits,
	       devpriv->main_iobase + DAC_CONTROL1_REG);
}