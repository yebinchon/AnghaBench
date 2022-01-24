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
struct pci9118_private {int ai_cfg; int ai_ctrl; int int_ctrl; scalar_t__ dma_actbuf; scalar_t__ ai_neverending; scalar_t__ ai_act_dmapos; scalar_t__ usedma; scalar_t__ ai_do; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; int /*<<< orphan*/  pacer; struct pci9118_private* private; } ;
struct TYPE_2__ {int /*<<< orphan*/ * inttrig; } ;

/* Variables and functions */
 scalar_t__ PCI9118_AI_AUTOSCAN_MODE_REG ; 
 scalar_t__ PCI9118_AI_BURST_NUM_REG ; 
 int PCI9118_AI_CFG_PDTRG ; 
 int PCI9118_AI_CFG_PETRG ; 
 scalar_t__ PCI9118_AI_CFG_REG ; 
 scalar_t__ PCI9118_AI_CTRL_REG ; 
 scalar_t__ PCI9118_INT_CTRL_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,int) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
			     struct comedi_subdevice *s)
{
	struct pci9118_private *devpriv = dev->private;

	if (devpriv->usedma)
		FUNC3(dev, false);
	FUNC5(dev, false);
	FUNC0(dev->pacer, 1, 2, false);
	/* set default config (disable burst and triggers) */
	devpriv->ai_cfg = PCI9118_AI_CFG_PDTRG | PCI9118_AI_CFG_PETRG;
	FUNC1(devpriv->ai_cfg, dev->iobase + PCI9118_AI_CFG_REG);
	/* reset acquisition control */
	devpriv->ai_ctrl = 0;
	FUNC1(devpriv->ai_ctrl, dev->iobase + PCI9118_AI_CTRL_REG);
	FUNC1(0, dev->iobase + PCI9118_AI_BURST_NUM_REG);
	/* reset scan queue */
	FUNC1(1, dev->iobase + PCI9118_AI_AUTOSCAN_MODE_REG);
	FUNC1(2, dev->iobase + PCI9118_AI_AUTOSCAN_MODE_REG);
	FUNC2(dev);

	devpriv->int_ctrl = 0;
	FUNC1(devpriv->int_ctrl, dev->iobase + PCI9118_INT_CTRL_REG);
	FUNC4(dev, false);

	devpriv->ai_do = 0;
	devpriv->usedma = 0;

	devpriv->ai_act_dmapos = 0;
	s->async->inttrig = NULL;
	devpriv->ai_neverending = 0;
	devpriv->dma_actbuf = 0;

	return 0;
}