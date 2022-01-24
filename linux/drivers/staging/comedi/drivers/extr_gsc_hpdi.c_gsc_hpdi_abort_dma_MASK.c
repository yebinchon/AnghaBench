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
struct hpdi_private {int /*<<< orphan*/  plx9080_mmio; } ;
struct comedi_device {int /*<<< orphan*/  spinlock; struct hpdi_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev, unsigned int channel)
{
	struct hpdi_private *devpriv = dev->private;
	unsigned long flags;

	/* spinlock for plx dma control/status reg */
	FUNC1(&dev->spinlock, flags);

	FUNC0(devpriv->plx9080_mmio, channel);

	FUNC2(&dev->spinlock, flags);
}