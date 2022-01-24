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
struct TYPE_4__ {scalar_t__ sd; } ;
struct TYPE_3__ {TYPE_2__ kobj; } ;
struct pci_dev {int /*<<< orphan*/  bus; TYPE_1__ dev; } ;

/* Variables and functions */
 int VIRTFN_ID_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(struct pci_dev *dev, int id)
{
	char buf[VIRTFN_ID_LEN];
	struct pci_dev *virtfn;

	virtfn = FUNC2(FUNC1(dev->bus),
					     FUNC3(dev, id),
					     FUNC4(dev, id));
	if (!virtfn)
		return;

	FUNC6(buf, "virtfn%u", id);
	FUNC7(&dev->dev.kobj, buf);
	/*
	 * pci_stop_dev() could have been called for this virtfn already,
	 * so the directory for the virtfn may have been removed before.
	 * Double check to avoid spurious sysfs warnings.
	 */
	if (virtfn->dev.kobj.sd)
		FUNC7(&virtfn->dev.kobj, "physfn");

	FUNC5(virtfn);
	FUNC8(dev->bus, virtfn->bus);

	/* balance pci_get_domain_bus_and_slot() */
	FUNC0(virtfn);
	FUNC0(dev);
}