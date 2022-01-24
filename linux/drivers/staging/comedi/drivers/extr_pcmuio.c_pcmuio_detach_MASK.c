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
struct pcmuio_private {scalar_t__ irq2; } ;
struct comedi_device {scalar_t__ irq; struct pcmuio_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev)
{
	struct pcmuio_private *devpriv = dev->private;

	if (devpriv) {
		FUNC2(dev);

		/* free the 2nd irq if used, the core will free the 1st one */
		if (devpriv->irq2 && devpriv->irq2 != dev->irq)
			FUNC1(devpriv->irq2, dev);
	}
	FUNC0(dev);
}