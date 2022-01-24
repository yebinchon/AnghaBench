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
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  class_dev; struct cb_pcidas_private* private; } ;
struct comedi_cmd {unsigned int chanlist_len; int scan_begin_src; int /*<<< orphan*/ * chanlist; } ;
struct comedi_async {int /*<<< orphan*/  inttrig; struct comedi_cmd cmd; } ;
struct cb_pcidas_private {int /*<<< orphan*/  ao_ctrl; int /*<<< orphan*/  ao_pacer; scalar_t__ pcibar4; scalar_t__ pcibar1; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 scalar_t__ PCIDAS_AO_FIFO_CLR_REG ; 
 int /*<<< orphan*/  PCIDAS_AO_PACER_EXTP ; 
 int /*<<< orphan*/  PCIDAS_AO_PACER_INT ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned int) ; 
 scalar_t__ PCIDAS_AO_REG ; 
#define  TRIG_EXT 129 
#define  TRIG_TIMER 128 
 int /*<<< orphan*/  cb_pcidas_ao_inttrig ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct comedi_device *dev,
			    struct comedi_subdevice *s)
{
	struct cb_pcidas_private *devpriv = dev->private;
	struct comedi_async *async = s->async;
	struct comedi_cmd *cmd = &async->cmd;
	unsigned int i;
	unsigned long flags;

	/*  set channel limits, gain */
	FUNC8(&dev->spinlock, flags);
	for (i = 0; i < cmd->chanlist_len; i++) {
		unsigned int chan = FUNC0(cmd->chanlist[i]);
		unsigned int range = FUNC1(cmd->chanlist[i]);

		/*  enable channel */
		devpriv->ao_ctrl |= FUNC2(chan);
		/*  set range */
		devpriv->ao_ctrl |= FUNC3(chan, range);
	}

	/*  disable analog out before settings pacer source and count values */
	FUNC7(devpriv->ao_ctrl, devpriv->pcibar1 + PCIDAS_AO_REG);
	FUNC9(&dev->spinlock, flags);

	/*  clear fifo */
	FUNC7(0, devpriv->pcibar4 + PCIDAS_AO_FIFO_CLR_REG);

	/*  load counters */
	if (cmd->scan_begin_src == TRIG_TIMER) {
		FUNC5(devpriv->ao_pacer);
		FUNC4(devpriv->ao_pacer, 1, 2, true);
	}

	/*  set pacer source */
	FUNC8(&dev->spinlock, flags);
	switch (cmd->scan_begin_src) {
	case TRIG_TIMER:
		devpriv->ao_ctrl |= PCIDAS_AO_PACER_INT;
		break;
	case TRIG_EXT:
		devpriv->ao_ctrl |= PCIDAS_AO_PACER_EXTP;
		break;
	default:
		FUNC9(&dev->spinlock, flags);
		FUNC6(dev->class_dev, "error setting dac pacer source\n");
		return -1;
	}
	FUNC9(&dev->spinlock, flags);

	async->inttrig = cb_pcidas_ao_inttrig;

	return 0;
}