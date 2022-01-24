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
struct pci9118_private {int int_ctrl; } ;
struct comedi_device {scalar_t__ iobase; struct pci9118_private* private; } ;

/* Variables and functions */
 int PCI9118_INT_CTRL_DTRG ; 
 scalar_t__ PCI9118_INT_CTRL_REG ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int) ; 

__attribute__((used)) static void FUNC2(struct comedi_device *dev, bool enable)
{
	struct pci9118_private *devpriv = dev->private;

	if (enable)
		devpriv->int_ctrl |= PCI9118_INT_CTRL_DTRG;
	else
		devpriv->int_ctrl &= ~PCI9118_INT_CTRL_DTRG;
	FUNC0(devpriv->int_ctrl, dev->iobase + PCI9118_INT_CTRL_REG);

	if (devpriv->int_ctrl)
		FUNC1(dev, true);
	else
		FUNC1(dev, false);
}