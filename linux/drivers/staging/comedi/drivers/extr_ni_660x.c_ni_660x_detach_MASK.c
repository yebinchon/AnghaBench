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
struct ni_660x_private {int /*<<< orphan*/  mite; int /*<<< orphan*/  counter_dev; } ;
struct comedi_device {scalar_t__ mmio; scalar_t__ irq; struct ni_660x_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  NI660X_GLOBAL_INT_CFG ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct comedi_device *dev)
{
	struct ni_660x_private *devpriv = dev->private;

	if (dev->irq) {
		FUNC5(dev, 0, 0, NI660X_GLOBAL_INT_CFG);
		FUNC1(dev->irq, dev);
	}
	if (devpriv) {
		FUNC6(devpriv->counter_dev);
		FUNC4(dev);
		FUNC3(devpriv->mite);
	}
	if (dev->mmio)
		FUNC2(dev->mmio);
	FUNC0(dev);
}