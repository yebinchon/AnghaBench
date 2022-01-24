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
typedef  scalar_t__ u8 ;
struct pci_dev {int dummy; } ;
struct me4000_private {scalar_t__ plx_regbase; } ;
struct comedi_device {int /*<<< orphan*/  class_dev; struct me4000_private* private; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 scalar_t__ PLX9052_CNTRL ; 
 unsigned int PLX9052_CNTRL_UIO0_DATA ; 
 unsigned int PLX9052_CNTRL_UIO1_DATA ; 
 unsigned int PLX9052_CNTRL_UIO2_DATA ; 
 scalar_t__ PLX9052_INTCSR ; 
 unsigned int PLX9052_INTCSR_LI2POL ; 
 unsigned int PLX9052_INTCSR_LI2STAT ; 
 struct pci_dev* FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__ const,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 
 unsigned long FUNC6 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct comedi_device *dev,
				  const u8 *data, size_t size,
				  unsigned long context)
{
	struct pci_dev *pcidev = FUNC0(dev);
	struct me4000_private *devpriv = dev->private;
	unsigned long xilinx_iobase = FUNC6(pcidev, 5);
	unsigned int file_length;
	unsigned int val;
	unsigned int i;

	if (!xilinx_iobase)
		return -ENODEV;

	/*
	 * Set PLX local interrupt 2 polarity to high.
	 * Interrupt is thrown by init pin of xilinx.
	 */
	FUNC5(PLX9052_INTCSR_LI2POL, devpriv->plx_regbase + PLX9052_INTCSR);

	/* Set /CS and /WRITE of the Xilinx */
	val = FUNC3(devpriv->plx_regbase + PLX9052_CNTRL);
	val |= PLX9052_CNTRL_UIO2_DATA;
	FUNC5(val, devpriv->plx_regbase + PLX9052_CNTRL);

	/* Init Xilinx with CS1 */
	FUNC2(xilinx_iobase + 0xC8);

	/* Wait until /INIT pin is set */
	FUNC7(20, 1000);
	val = FUNC3(devpriv->plx_regbase + PLX9052_INTCSR);
	if (!(val & PLX9052_INTCSR_LI2STAT)) {
		FUNC1(dev->class_dev, "Can't init Xilinx\n");
		return -EIO;
	}

	/* Reset /CS and /WRITE of the Xilinx */
	val = FUNC3(devpriv->plx_regbase + PLX9052_CNTRL);
	val &= ~PLX9052_CNTRL_UIO2_DATA;
	FUNC5(val, devpriv->plx_regbase + PLX9052_CNTRL);

	/* Download Xilinx firmware */
	file_length = (((unsigned int)data[0] & 0xff) << 24) +
		      (((unsigned int)data[1] & 0xff) << 16) +
		      (((unsigned int)data[2] & 0xff) << 8) +
		      ((unsigned int)data[3] & 0xff);
	FUNC7(10, 1000);

	for (i = 0; i < file_length; i++) {
		FUNC4(data[16 + i], xilinx_iobase);
		FUNC7(10, 1000);

		/* Check if BUSY flag is low */
		val = FUNC3(devpriv->plx_regbase + PLX9052_CNTRL);
		if (val & PLX9052_CNTRL_UIO1_DATA) {
			FUNC1(dev->class_dev,
				"Xilinx is still busy (i = %d)\n", i);
			return -EIO;
		}
	}

	/* If done flag is high download was successful */
	val = FUNC3(devpriv->plx_regbase + PLX9052_CNTRL);
	if (!(val & PLX9052_CNTRL_UIO0_DATA)) {
		FUNC1(dev->class_dev, "DONE flag is not set\n");
		FUNC1(dev->class_dev, "Download not successful\n");
		return -EIO;
	}

	/* Set /CS and /WRITE */
	val = FUNC3(devpriv->plx_regbase + PLX9052_CNTRL);
	val |= PLX9052_CNTRL_UIO2_DATA;
	FUNC5(val, devpriv->plx_regbase + PLX9052_CNTRL);

	return 0;
}