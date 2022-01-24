#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct pci_dev {scalar_t__ hdr_type; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {unsigned int end; scalar_t__ start; } ;
struct pci_bus {unsigned int number; unsigned int primary; int bridge_ctl; struct pci_bus* parent; TYPE_1__ busn_res; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int CARDBUS_LATENCY_TIMER ; 
 int CARDBUS_RESERVE_BUSNR ; 
 int /*<<< orphan*/  PCI_BRIDGE_CONTROL ; 
 int PCI_BRIDGE_CTL_MASTER_ABORT ; 
 scalar_t__ PCI_HEADER_TYPE_CARDBUS ; 
 int /*<<< orphan*/  PCI_PRIMARY_BUS ; 
 int /*<<< orphan*/  PCI_STATUS ; 
 int /*<<< orphan*/  PCI_SUBORDINATE_BUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 struct pci_bus* FUNC1 (struct pci_bus*,struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_bus*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_bus*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,char*,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_bus*) ; 
 int FUNC6 (struct pci_dev*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 struct pci_bus* FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 unsigned int FUNC12 (struct pci_bus*) ; 
 int FUNC13 (struct pci_bus*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC22(struct pci_bus *bus, struct pci_dev *dev,
				  int max, unsigned int available_buses,
				  int pass)
{
	struct pci_bus *child;
	int is_cardbus = (dev->hdr_type == PCI_HEADER_TYPE_CARDBUS);
	u32 buses, i, j = 0;
	u16 bctl;
	u8 primary, secondary, subordinate;
	int broken = 0;
	bool fixed_buses;
	u8 fixed_sec, fixed_sub;
	int next_busnr;

	/*
	 * Make sure the bridge is powered on to be able to access config
	 * space of devices below it.
	 */
	FUNC19(&dev->dev);

	FUNC10(dev, PCI_PRIMARY_BUS, &buses);
	primary = buses & 0xFF;
	secondary = (buses >> 8) & 0xFF;
	subordinate = (buses >> 16) & 0xFF;

	FUNC4(dev, "scanning [bus %02x-%02x] behind bridge, pass %d\n",
		secondary, subordinate, pass);

	if (!primary && (primary != bus->number) && secondary && subordinate) {
		FUNC14(dev, "Primary bus is hard wired to 0\n");
		primary = bus->number;
	}

	/* Check if setup is sensible at all */
	if (!pass &&
	    (primary != bus->number || secondary <= bus->number ||
	     secondary > subordinate)) {
		FUNC9(dev, "bridge configuration invalid ([bus %02x-%02x]), reconfiguring\n",
			 secondary, subordinate);
		broken = 1;
	}

	/*
	 * Disable Master-Abort Mode during probing to avoid reporting of
	 * bus errors in some architectures.
	 */
	FUNC11(dev, PCI_BRIDGE_CONTROL, &bctl);
	FUNC17(dev, PCI_BRIDGE_CONTROL,
			      bctl & ~PCI_BRIDGE_CTL_MASTER_ABORT);

	FUNC7(dev);

	if ((secondary || subordinate) && !FUNC18() &&
	    !is_cardbus && !broken) {
		unsigned int cmax;

		/*
		 * Bus already configured by firmware, process it in the
		 * first pass and just note the configuration.
		 */
		if (pass)
			goto out;

		/*
		 * The bus might already exist for two reasons: Either we
		 * are rescanning the bus or the bus is reachable through
		 * more than one bridge. The second case can happen with
		 * the i450NX chipset.
		 */
		child = FUNC8(FUNC5(bus), secondary);
		if (!child) {
			child = FUNC1(bus, dev, secondary);
			if (!child)
				goto out;
			child->primary = primary;
			FUNC2(child, secondary, subordinate);
			child->bridge_ctl = bctl;
		}

		cmax = FUNC12(child);
		if (cmax > subordinate)
			FUNC14(dev, "bridge has subordinate %02x but max busn %02x\n",
				 subordinate, cmax);

		/* Subordinate should equal child->busn_res.end */
		if (subordinate > max)
			max = subordinate;
	} else {

		/*
		 * We need to assign a number to this bus which we always
		 * do in the second pass.
		 */
		if (!pass) {
			if (FUNC18() || broken || is_cardbus)

				/*
				 * Temporarily disable forwarding of the
				 * configuration cycles on all bridges in
				 * this bus segment to avoid possible
				 * conflicts in the second pass between two
				 * bridges programmed with overlapping bus
				 * ranges.
				 */
				FUNC16(dev, PCI_PRIMARY_BUS,
						       buses & ~0xffffff);
			goto out;
		}

		/* Clear errors */
		FUNC17(dev, PCI_STATUS, 0xffff);

		/* Read bus numbers from EA Capability (if present) */
		fixed_buses = FUNC6(dev, &fixed_sec, &fixed_sub);
		if (fixed_buses)
			next_busnr = fixed_sec;
		else
			next_busnr = max + 1;

		/*
		 * Prevent assigning a bus number that already exists.
		 * This can happen when a bridge is hot-plugged, so in this
		 * case we only re-scan this bus.
		 */
		child = FUNC8(FUNC5(bus), next_busnr);
		if (!child) {
			child = FUNC1(bus, dev, next_busnr);
			if (!child)
				goto out;
			FUNC2(child, next_busnr,
						bus->busn_res.end);
		}
		max++;
		if (available_buses)
			available_buses--;

		buses = (buses & 0xff000000)
		      | ((unsigned int)(child->primary)     <<  0)
		      | ((unsigned int)(child->busn_res.start)   <<  8)
		      | ((unsigned int)(child->busn_res.end) << 16);

		/*
		 * yenta.c forces a secondary latency timer of 176.
		 * Copy that behaviour here.
		 */
		if (is_cardbus) {
			buses &= ~0xff000000;
			buses |= CARDBUS_LATENCY_TIMER << 24;
		}

		/* We need to blast all three values with a single write */
		FUNC16(dev, PCI_PRIMARY_BUS, buses);

		if (!is_cardbus) {
			child->bridge_ctl = bctl;
			max = FUNC13(child, available_buses);
		} else {

			/*
			 * For CardBus bridges, we leave 4 bus numbers as
			 * cards with a PCI-to-PCI bridge can be inserted
			 * later.
			 */
			for (i = 0; i < CARDBUS_RESERVE_BUSNR; i++) {
				struct pci_bus *parent = bus;
				if (FUNC8(FUNC5(bus),
							max+i+1))
					break;
				while (parent->parent) {
					if ((!FUNC18()) &&
					    (parent->busn_res.end > max) &&
					    (parent->busn_res.end <= max+i)) {
						j = 1;
					}
					parent = parent->parent;
				}
				if (j) {

					/*
					 * Often, there are two CardBus
					 * bridges -- try to leave one
					 * valid bus number for each one.
					 */
					i /= 2;
					break;
				}
			}
			max += i;
		}

		/*
		 * Set subordinate bus number to its real value.
		 * If fixed subordinate bus number exists from EA
		 * capability then use it.
		 */
		if (fixed_buses)
			max = fixed_sub;
		FUNC3(child, max);
		FUNC15(dev, PCI_SUBORDINATE_BUS, max);
	}

	FUNC21(child->name,
		(is_cardbus ? "PCI CardBus %04x:%02x" : "PCI Bus %04x:%02x"),
		FUNC5(bus), child->number);

	/* Check that all devices are accessible */
	while (bus->parent) {
		if ((child->busn_res.end > bus->busn_res.end) ||
		    (child->number > bus->busn_res.end) ||
		    (child->number < bus->number) ||
		    (child->busn_res.end < bus->number)) {
			FUNC0(&dev->dev, "devices behind bridge are unusable because %pR cannot be assigned for them\n",
				 &child->busn_res);
			break;
		}
		bus = bus->parent;
	}

out:
	FUNC17(dev, PCI_BRIDGE_CONTROL, bctl);

	FUNC20(&dev->dev);

	return max;
}