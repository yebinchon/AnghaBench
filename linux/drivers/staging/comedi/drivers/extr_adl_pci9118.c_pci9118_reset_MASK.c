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
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 scalar_t__ PCI9118_AI_AUTOSCAN_MODE_REG ; 
 scalar_t__ PCI9118_AI_BURST_NUM_REG ; 
 scalar_t__ PCI9118_AI_CFG_REG ; 
 scalar_t__ PCI9118_AI_CTRL_REG ; 
 scalar_t__ PCI9118_AI_STATUS_REG ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ PCI9118_INT_CTRL_REG ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev)
{
	/* reset analog input subsystem */
	FUNC2(0, dev->iobase + PCI9118_INT_CTRL_REG);
	FUNC2(0, dev->iobase + PCI9118_AI_CTRL_REG);
	FUNC2(0, dev->iobase + PCI9118_AI_CFG_REG);
	FUNC3(dev);

	/* clear any pending interrupts and status */
	FUNC1(dev->iobase + PCI9118_INT_CTRL_REG);
	FUNC1(dev->iobase + PCI9118_AI_STATUS_REG);

	/* reset DMA and scan queue */
	FUNC2(0, dev->iobase + PCI9118_AI_BURST_NUM_REG);
	FUNC2(1, dev->iobase + PCI9118_AI_AUTOSCAN_MODE_REG);
	FUNC2(2, dev->iobase + PCI9118_AI_AUTOSCAN_MODE_REG);

	/* reset analog outputs to 0V */
	FUNC2(2047, dev->iobase + FUNC0(0));
	FUNC2(2047, dev->iobase + FUNC0(1));
}