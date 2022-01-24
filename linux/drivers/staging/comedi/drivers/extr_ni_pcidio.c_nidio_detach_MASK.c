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
struct nidio96_private {int /*<<< orphan*/  mite; int /*<<< orphan*/ * di_mite_ring; } ;
struct comedi_device {scalar_t__ mmio; scalar_t__ irq; struct nidio96_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct comedi_device *dev)
{
	struct nidio96_private *devpriv = dev->private;

	if (dev->irq)
		FUNC1(dev->irq, dev);
	if (devpriv) {
		if (devpriv->di_mite_ring) {
			FUNC4(devpriv->di_mite_ring);
			devpriv->di_mite_ring = NULL;
		}
		FUNC3(devpriv->mite);
	}
	if (dev->mmio)
		FUNC2(dev->mmio);
	FUNC0(dev);
}