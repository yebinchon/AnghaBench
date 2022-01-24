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
struct me4000_private {scalar_t__ plx_regbase; } ;
struct comedi_device {scalar_t__ iobase; struct me4000_private* private; } ;

/* Variables and functions */
 unsigned int ME4000_AO_CTRL_IMMEDIATE_STOP ; 
 scalar_t__ FUNC0 (int) ; 
 unsigned int ME4000_AO_CTRL_STOP ; 
 scalar_t__ ME4000_AO_DEMUX_ADJUST_REG ; 
 int ME4000_AO_DEMUX_ADJUST_VALUE ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ ME4000_DIO_CTRL_REG ; 
 scalar_t__ ME4000_DIO_DIR_REG ; 
 scalar_t__ PLX9052_CNTRL ; 
 unsigned int PLX9052_CNTRL_PCI_RESET ; 
 scalar_t__ PLX9052_INTCSR ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct comedi_device *dev)
{
	struct me4000_private *devpriv = dev->private;
	unsigned int val;
	int chan;

	/* Disable interrupts on the PLX */
	FUNC4(0, devpriv->plx_regbase + PLX9052_INTCSR);

	/* Software reset the PLX */
	val = FUNC2(devpriv->plx_regbase + PLX9052_CNTRL);
	val |= PLX9052_CNTRL_PCI_RESET;
	FUNC4(val, devpriv->plx_regbase + PLX9052_CNTRL);
	val &= ~PLX9052_CNTRL_PCI_RESET;
	FUNC4(val, devpriv->plx_regbase + PLX9052_CNTRL);

	/* 0x8000 to the DACs means an output voltage of 0V */
	for (chan = 0; chan < 4; chan++)
		FUNC4(0x8000, dev->iobase + FUNC1(chan));

	FUNC3(dev);

	/* Set both stop bits in the analog output control register */
	val = ME4000_AO_CTRL_IMMEDIATE_STOP | ME4000_AO_CTRL_STOP;
	for (chan = 0; chan < 4; chan++)
		FUNC4(val, dev->iobase + FUNC0(chan));

	/* Set the adustment register for AO demux */
	FUNC4(ME4000_AO_DEMUX_ADJUST_VALUE,
	     dev->iobase + ME4000_AO_DEMUX_ADJUST_REG);

	/*
	 * Set digital I/O direction for port 0
	 * to output on isolated versions
	 */
	if (!(FUNC2(dev->iobase + ME4000_DIO_DIR_REG) & 0x1))
		FUNC4(0x1, dev->iobase + ME4000_DIO_CTRL_REG);
}