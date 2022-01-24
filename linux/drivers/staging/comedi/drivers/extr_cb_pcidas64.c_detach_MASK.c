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
struct pcidas64_private {scalar_t__ main_iobase; scalar_t__ plx9080_iobase; } ;
struct comedi_device {scalar_t__ mmio; scalar_t__ irq; struct pcidas64_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct comedi_device *dev)
{
	struct pcidas64_private *devpriv = dev->private;

	if (dev->irq)
		FUNC3(dev->irq, dev);
	if (devpriv) {
		if (devpriv->plx9080_iobase) {
			FUNC2(dev);
			FUNC4(devpriv->plx9080_iobase);
		}
		if (devpriv->main_iobase)
			FUNC4(devpriv->main_iobase);
		if (dev->mmio)
			FUNC4(dev->mmio);
	}
	FUNC1(dev);
	FUNC0(dev);
}