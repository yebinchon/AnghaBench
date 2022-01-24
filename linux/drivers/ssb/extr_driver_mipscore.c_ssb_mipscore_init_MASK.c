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
struct ssb_mipscore {TYPE_2__* dev; } ;
struct TYPE_3__ {int coreid; } ;
struct ssb_device {int irq; TYPE_1__ id; } ;
struct ssb_bus {unsigned int nr_devices; int chip_id; struct ssb_device* devices; int /*<<< orphan*/  chipco; int /*<<< orphan*/  extif; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; struct ssb_bus* bus; } ;

/* Variables and functions */
#define  SSB_DEV_80211 134 
#define  SSB_DEV_ETHERNET 133 
#define  SSB_DEV_ETHERNET_GBIT 132 
#define  SSB_DEV_EXTIF 131 
#define  SSB_DEV_PCI 130 
#define  SSB_DEV_USB11_HOST 129 
#define  SSB_DEV_USB20_HOST 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ssb_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct ssb_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC5 (struct ssb_bus*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct ssb_mipscore*) ; 
 int FUNC9 (struct ssb_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct ssb_mipscore*) ; 

void FUNC11(struct ssb_mipscore *mcore)
{
	struct ssb_bus *bus;
	struct ssb_device *dev;
	unsigned long hz, ns;
	unsigned int irq, i;

	if (!mcore->dev)
		return; /* We don't have a MIPS core */

	FUNC0(mcore->dev->dev, "Initializing MIPS core...\n");

	bus = mcore->dev->bus;
	hz = FUNC5(bus);
	if (!hz)
		hz = 100000000;
	ns = 1000000000 / hz;

	if (FUNC6(&bus->extif))
		FUNC7(&bus->extif, ns);
	else if (FUNC3(&bus->chipco))
		FUNC4(&bus->chipco, ns);

	/* Assign IRQs to all cores on the bus, start with irq line 2, because serial usually takes 1 */
	for (irq = 2, i = 0; i < bus->nr_devices; i++) {
		int mips_irq;
		dev = &(bus->devices[i]);
		mips_irq = FUNC9(dev);
		if (mips_irq > 4)
			dev->irq = 0;
		else
			dev->irq = mips_irq + 2;
		if (dev->irq > 5)
			continue;
		switch (dev->id.coreid) {
		case SSB_DEV_USB11_HOST:
			/* shouldn't need a separate irq line for non-4710, most of them have a proper
			 * external usb controller on the pci */
			if ((bus->chip_id == 0x4710) && (irq <= 4)) {
				FUNC2(dev, irq++);
			}
			break;
		case SSB_DEV_PCI:
		case SSB_DEV_ETHERNET:
		case SSB_DEV_ETHERNET_GBIT:
		case SSB_DEV_80211:
		case SSB_DEV_USB20_HOST:
			/* These devices get their own IRQ line if available, the rest goes on IRQ0 */
			if (irq <= 4) {
				FUNC2(dev, irq++);
				break;
			}
			/* fallthrough */
		case SSB_DEV_EXTIF:
			FUNC2(dev, 0);
			break;
		}
	}
	FUNC0(mcore->dev->dev, "after irq reconfiguration\n");
	FUNC1(bus);

	FUNC10(mcore);
	FUNC8(mcore);
}