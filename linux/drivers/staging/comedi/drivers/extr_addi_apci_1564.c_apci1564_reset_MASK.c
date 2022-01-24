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
struct comedi_device {scalar_t__ iobase; struct apci1564_private* private; } ;
struct apci1564_private {long counters; scalar_t__ timer; } ;

/* Variables and functions */
 unsigned long ADDI_TCW_CTRL_REG ; 
 scalar_t__ ADDI_TCW_RELOAD_REG ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ APCI1564_DI_INT_MODE1_REG ; 
 scalar_t__ APCI1564_DI_INT_MODE2_REG ; 
 scalar_t__ APCI1564_DI_INT_STATUS_REG ; 
 scalar_t__ APCI1564_DI_IRQ_REG ; 
 scalar_t__ APCI1564_DO_INT_CTRL_REG ; 
 scalar_t__ APCI1564_DO_REG ; 
 scalar_t__ APCI1564_WDOG_IOBASE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev)
{
	struct apci1564_private *devpriv = dev->private;

	/* Disable the input interrupts and reset status register */
	FUNC3(0x0, dev->iobase + APCI1564_DI_IRQ_REG);
	FUNC2(dev->iobase + APCI1564_DI_INT_STATUS_REG);
	FUNC3(0x0, dev->iobase + APCI1564_DI_INT_MODE1_REG);
	FUNC3(0x0, dev->iobase + APCI1564_DI_INT_MODE2_REG);

	/* Reset the output channels and disable interrupts */
	FUNC3(0x0, dev->iobase + APCI1564_DO_REG);
	FUNC3(0x0, dev->iobase + APCI1564_DO_INT_CTRL_REG);

	/* Reset the watchdog registers */
	FUNC1(dev->iobase + APCI1564_WDOG_IOBASE);

	/* Reset the timer registers */
	FUNC3(0x0, devpriv->timer + ADDI_TCW_CTRL_REG);
	FUNC3(0x0, devpriv->timer + ADDI_TCW_RELOAD_REG);

	if (devpriv->counters) {
		unsigned long iobase = devpriv->counters + ADDI_TCW_CTRL_REG;

		/* Reset the counter registers */
		FUNC3(0x0, iobase + FUNC0(0));
		FUNC3(0x0, iobase + FUNC0(1));
		FUNC3(0x0, iobase + FUNC0(2));
	}

	return 0;
}