#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ni_private {int is_6xxx; unsigned int ao_mode1; int is_m_series; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct ni_private* private; } ;
struct comedi_cmd {unsigned int chanlist_len; int scan_end_arg; int /*<<< orphan*/ * chanlist; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NI611X_AO_TIMED_REG ; 
 int /*<<< orphan*/  NI611X_AO_WAVEFORM_GEN_REG ; 
 unsigned int NISTC_AO_MODE1_MULTI_CHAN ; 
 int /*<<< orphan*/  NISTC_AO_MODE1_REG ; 
 unsigned int FUNC1 (int) ; 
 int /*<<< orphan*/  NISTC_AO_OUT_CTRL_REG ; 
 unsigned int NISTC_AO_OUT_CTRL_UPDATE_SEL_HIGHZ ; 
 unsigned int NISTC_RESET_AO_CFG_END ; 
 unsigned int NISTC_RESET_AO_CFG_START ; 
 int /*<<< orphan*/  NISTC_RESET_REG ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ *,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct comedi_device *dev,
				   struct comedi_subdevice *s)
{
	struct ni_private *devpriv = dev->private;
	const struct comedi_cmd *cmd = &s->async->cmd;
	unsigned int bits = 0;

	FUNC4(dev, NISTC_RESET_AO_CFG_START, NISTC_RESET_REG);

	if (devpriv->is_6xxx) {
		unsigned int i;

		bits = 0;
		for (i = 0; i < cmd->chanlist_len; ++i) {
			int chan = FUNC0(cmd->chanlist[i]);

			bits |= 1 << chan;
			FUNC3(dev, chan, NI611X_AO_WAVEFORM_GEN_REG);
		}
		FUNC3(dev, bits, NI611X_AO_TIMED_REG);
	}

	FUNC2(dev, s, cmd->chanlist, cmd->chanlist_len, 1);

	if (cmd->scan_end_arg > 1) {
		devpriv->ao_mode1 |= NISTC_AO_MODE1_MULTI_CHAN;
		bits = FUNC1(cmd->scan_end_arg - 1)
				 | NISTC_AO_OUT_CTRL_UPDATE_SEL_HIGHZ;

	} else {
		devpriv->ao_mode1 &= ~NISTC_AO_MODE1_MULTI_CHAN;
		bits = NISTC_AO_OUT_CTRL_UPDATE_SEL_HIGHZ;
		if (devpriv->is_m_series | devpriv->is_6xxx)
			bits |= FUNC1(0);
		else
			bits |= FUNC1(
					FUNC0(cmd->chanlist[0]));
	}

	FUNC4(dev, devpriv->ao_mode1, NISTC_AO_MODE1_REG);
	FUNC4(dev, bits,              NISTC_AO_OUT_CTRL_REG);

	FUNC4(dev, NISTC_RESET_AO_CFG_END, NISTC_RESET_REG);
}