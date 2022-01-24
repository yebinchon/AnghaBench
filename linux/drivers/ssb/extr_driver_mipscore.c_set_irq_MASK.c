#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  coreid; } ;
struct ssb_device {unsigned int irq; TYPE_2__ id; int /*<<< orphan*/  dev; struct ssb_bus* bus; } ;
struct TYPE_3__ {struct ssb_device* dev; } ;
struct ssb_bus {TYPE_1__ mipscore; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SSB_INTVEC ; 
 int /*<<< orphan*/  SSB_IPSFLAG ; 
 int /*<<< orphan*/  FUNC1 (struct ssb_bus*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 struct ssb_device* FUNC3 (struct ssb_device*,int) ; 
 int* ipsflag_irq_mask ; 
 int* ipsflag_irq_shift ; 
 int FUNC4 (struct ssb_device*) ; 
 unsigned int FUNC5 (struct ssb_device*) ; 
 int FUNC6 (struct ssb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ssb_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct ssb_device *dev, unsigned int irq)
{
	unsigned int oldirq = FUNC5(dev);
	struct ssb_bus *bus = dev->bus;
	struct ssb_device *mdev = bus->mipscore.dev;
	u32 irqflag = FUNC4(dev);

	FUNC0(oldirq == 6);

	dev->irq = irq + 2;

	/* clear the old irq */
	if (oldirq == 0)
		FUNC7(mdev, SSB_INTVEC, (~(1 << irqflag) & FUNC6(mdev, SSB_INTVEC)));
	else if (oldirq != 5)
		FUNC1(bus, oldirq);

	/* assign the new one */
	if (irq == 0) {
		FUNC7(mdev, SSB_INTVEC, ((1 << irqflag) | FUNC6(mdev, SSB_INTVEC)));
	} else {
		u32 ipsflag = FUNC6(mdev, SSB_IPSFLAG);
		if ((ipsflag & ipsflag_irq_mask[irq]) != ipsflag_irq_mask[irq]) {
			u32 oldipsflag = (ipsflag & ipsflag_irq_mask[irq]) >> ipsflag_irq_shift[irq];
			struct ssb_device *olddev = FUNC3(dev, oldipsflag);
			if (olddev)
				FUNC8(olddev, 0);
		}
		irqflag <<= ipsflag_irq_shift[irq];
		irqflag |= (ipsflag & ~ipsflag_irq_mask[irq]);
		FUNC7(mdev, SSB_IPSFLAG, irqflag);
	}
	FUNC2(dev->dev, "set_irq: core 0x%04x, irq %d => %d\n",
		dev->id.coreid, oldirq+2, irq+2);
}