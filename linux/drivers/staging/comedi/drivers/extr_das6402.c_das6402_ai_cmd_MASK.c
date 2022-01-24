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
struct das6402_private {int /*<<< orphan*/  irq; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; int /*<<< orphan*/  pacer; struct das6402_private* private; } ;
struct comedi_cmd {int chanlist_len; int /*<<< orphan*/ * chanlist; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 scalar_t__ DAS6402_AI_MUX_REG ; 
 int DAS6402_CTRL_INTE ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int DAS6402_CTRL_PACER_TRIG ; 
 scalar_t__ DAS6402_CTRL_REG ; 
 int /*<<< orphan*/  DAS6402_MODE_FIFONEPTY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct comedi_device *dev,
			  struct comedi_subdevice *s)
{
	struct das6402_private *devpriv = dev->private;
	struct comedi_cmd *cmd = &s->async->cmd;
	unsigned int chan_lo = FUNC0(cmd->chanlist[0]);
	unsigned int chan_hi = FUNC0(cmd->chanlist[cmd->chanlist_len - 1]);

	FUNC6(dev, s, cmd->chanlist[0], DAS6402_MODE_FIFONEPTY);

	/* load the mux for chanlist conversion */
	FUNC8(FUNC1(chan_hi) | FUNC2(chan_lo),
	     dev->iobase + DAS6402_AI_MUX_REG);

	FUNC5(dev->pacer);
	FUNC4(dev->pacer, 1, 2, true);

	/* enable interrupt and pacer trigger */
	FUNC7(DAS6402_CTRL_INTE |
	     FUNC3(devpriv->irq) |
	     DAS6402_CTRL_PACER_TRIG, dev->iobase + DAS6402_CTRL_REG);

	return 0;
}