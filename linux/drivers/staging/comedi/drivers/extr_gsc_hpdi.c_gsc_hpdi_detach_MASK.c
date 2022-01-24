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
struct hpdi_private {scalar_t__ plx9080_mmio; } ;
struct comedi_device {scalar_t__ mmio; scalar_t__ irq; struct hpdi_private* private; } ;

/* Variables and functions */
 scalar_t__ PLX_REG_INTCSR ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct comedi_device *dev)
{
	struct hpdi_private *devpriv = dev->private;

	if (dev->irq)
		FUNC1(dev->irq, dev);
	if (devpriv) {
		if (devpriv->plx9080_mmio) {
			FUNC4(0, devpriv->plx9080_mmio + PLX_REG_INTCSR);
			FUNC3(devpriv->plx9080_mmio);
		}
		if (dev->mmio)
			FUNC3(dev->mmio);
	}
	FUNC0(dev);
	FUNC2(dev);
}