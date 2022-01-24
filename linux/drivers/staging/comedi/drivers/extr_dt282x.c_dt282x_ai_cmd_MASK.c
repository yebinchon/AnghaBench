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
struct dt282x_private {int divisor; int supcsr; int ntrig; int nread; int adcsr; int /*<<< orphan*/  dma_dir; struct comedi_isadma* dma; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_isadma {scalar_t__ cur_dma; } ;
struct comedi_device {scalar_t__ iobase; struct dt282x_private* private; } ;
struct comedi_cmd {scalar_t__ scan_begin_src; int stop_arg; int scan_end_arg; int /*<<< orphan*/  chanlist; int /*<<< orphan*/  chanlist_len; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_ISADMA_READ ; 
 int DT2821_ADCSR_ADCLK ; 
 int DT2821_ADCSR_IADDONE ; 
 int /*<<< orphan*/  DT2821_ADCSR_MUXBUSY ; 
 scalar_t__ DT2821_ADCSR_REG ; 
 int DT2821_SUPCSR_ADCINIT ; 
 int DT2821_SUPCSR_BUFFB ; 
 int DT2821_SUPCSR_CLRDMADNE ; 
 int DT2821_SUPCSR_DDMA ; 
 int DT2821_SUPCSR_DS_AD_CLK ; 
 int DT2821_SUPCSR_DS_AD_TRIG ; 
 int DT2821_SUPCSR_ERRINTEN ; 
 int DT2821_SUPCSR_PRLD ; 
 scalar_t__ DT2821_SUPCSR_REG ; 
 int DT2821_SUPCSR_STRIG ; 
 int DT2821_SUPCSR_XTRIG ; 
 scalar_t__ DT2821_TMRCTR_REG ; 
 scalar_t__ TRIG_FOLLOW ; 
 int FUNC0 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dt282x_ai_timeout ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev, struct comedi_subdevice *s)
{
	struct dt282x_private *devpriv = dev->private;
	struct comedi_isadma *dma = devpriv->dma;
	struct comedi_cmd *cmd = &s->async->cmd;
	int ret;

	FUNC1(dev);

	FUNC4(devpriv->divisor, dev->iobase + DT2821_TMRCTR_REG);

	devpriv->supcsr = DT2821_SUPCSR_ERRINTEN;
	if (cmd->scan_begin_src == TRIG_FOLLOW)
		devpriv->supcsr = DT2821_SUPCSR_DS_AD_CLK;
	else
		devpriv->supcsr = DT2821_SUPCSR_DS_AD_TRIG;
	FUNC4(devpriv->supcsr |
	     DT2821_SUPCSR_CLRDMADNE |
	     DT2821_SUPCSR_BUFFB |
	     DT2821_SUPCSR_ADCINIT,
	     dev->iobase + DT2821_SUPCSR_REG);

	devpriv->ntrig = cmd->stop_arg * cmd->scan_end_arg;
	devpriv->nread = devpriv->ntrig;

	devpriv->dma_dir = COMEDI_ISADMA_READ;
	dma->cur_dma = 0;
	FUNC3(dev, 0, 0);
	if (devpriv->ntrig) {
		FUNC3(dev, 1, 0);
		devpriv->supcsr |= DT2821_SUPCSR_DDMA;
		FUNC4(devpriv->supcsr, dev->iobase + DT2821_SUPCSR_REG);
	}

	devpriv->adcsr = 0;

	FUNC2(dev, cmd->chanlist_len, cmd->chanlist);

	devpriv->adcsr = DT2821_ADCSR_ADCLK | DT2821_ADCSR_IADDONE;
	FUNC4(devpriv->adcsr, dev->iobase + DT2821_ADCSR_REG);

	FUNC4(devpriv->supcsr | DT2821_SUPCSR_PRLD,
	     dev->iobase + DT2821_SUPCSR_REG);
	ret = FUNC0(dev, s, NULL,
			     dt282x_ai_timeout, DT2821_ADCSR_MUXBUSY);
	if (ret)
		return ret;

	if (cmd->scan_begin_src == TRIG_FOLLOW) {
		FUNC4(devpriv->supcsr | DT2821_SUPCSR_STRIG,
		     dev->iobase + DT2821_SUPCSR_REG);
	} else {
		devpriv->supcsr |= DT2821_SUPCSR_XTRIG;
		FUNC4(devpriv->supcsr, dev->iobase + DT2821_SUPCSR_REG);
	}

	return 0;
}