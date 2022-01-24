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
struct ni_private {int /*<<< orphan*/  mite; int /*<<< orphan*/ * gpct_mite_ring; int /*<<< orphan*/  cdo_mite_ring; int /*<<< orphan*/  ao_mite_ring; int /*<<< orphan*/  ai_mite_ring; } ;
struct comedi_device {scalar_t__ mmio; scalar_t__ irq; struct ni_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct comedi_device *dev)
{
	struct ni_private *devpriv = dev->private;

	FUNC3(dev);
	if (dev->irq)
		FUNC1(dev->irq, dev);
	if (devpriv) {
		FUNC5(devpriv->ai_mite_ring);
		FUNC5(devpriv->ao_mite_ring);
		FUNC5(devpriv->cdo_mite_ring);
		FUNC5(devpriv->gpct_mite_ring[0]);
		FUNC5(devpriv->gpct_mite_ring[1]);
		FUNC4(devpriv->mite);
	}
	if (dev->mmio)
		FUNC2(dev->mmio);
	FUNC0(dev);
}