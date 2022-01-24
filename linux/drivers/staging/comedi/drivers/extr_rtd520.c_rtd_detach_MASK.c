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
struct rtd_private {scalar_t__ lcfg; scalar_t__ las1; } ;
struct comedi_device {scalar_t__ mmio; scalar_t__ irq; struct rtd_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev)
{
	struct rtd_private *devpriv = dev->private;

	if (devpriv) {
		/* Shut down any board ops by resetting it */
		if (dev->mmio && devpriv->lcfg)
			FUNC3(dev);
		if (dev->irq)
			FUNC1(dev->irq, dev);
		if (dev->mmio)
			FUNC2(dev->mmio);
		if (devpriv->las1)
			FUNC2(devpriv->las1);
		if (devpriv->lcfg)
			FUNC2(devpriv->lcfg);
	}
	FUNC0(dev);
}