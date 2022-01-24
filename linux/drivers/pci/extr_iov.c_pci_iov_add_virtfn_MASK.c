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
typedef  int u64 ;
struct resource {scalar_t__ start; scalar_t__ end; int /*<<< orphan*/  flags; int /*<<< orphan*/  name; int /*<<< orphan*/  parent; } ;
struct pci_sriov {int /*<<< orphan*/  vf_device; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; int /*<<< orphan*/  parent; } ;
struct pci_dev {int is_virtfn; int /*<<< orphan*/  bus; TYPE_1__ dev; struct resource* resource; scalar_t__ multifunction; int /*<<< orphan*/  physfn; int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; int /*<<< orphan*/  devfn; struct pci_sriov* sriov; } ;
struct pci_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int PCI_IOV_RESOURCES ; 
 int PCI_SRIOV_NUM_BARS ; 
 int VIRTFN_ID_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC2 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int FUNC14 (struct resource*,struct resource*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*) ; 
 struct pci_bus* FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct pci_bus*) ; 

int FUNC20(struct pci_dev *dev, int id)
{
	int i;
	int rc = -ENOMEM;
	u64 size;
	char buf[VIRTFN_ID_LEN];
	struct pci_dev *virtfn;
	struct resource *res;
	struct pci_sriov *iov = dev->sriov;
	struct pci_bus *bus;

	bus = FUNC18(dev->bus, FUNC8(dev, id));
	if (!bus)
		goto failed;

	virtfn = FUNC2(bus);
	if (!virtfn)
		goto failed0;

	virtfn->devfn = FUNC9(dev, id);
	virtfn->vendor = dev->vendor;
	virtfn->device = iov->vf_device;
	virtfn->is_virtfn = 1;
	virtfn->physfn = FUNC4(dev);

	if (id == 0)
		FUNC11(virtfn);

	rc = FUNC12(virtfn);
	if (rc)
		goto failed1;

	virtfn->dev.parent = dev->dev.parent;
	virtfn->multifunction = 0;

	for (i = 0; i < PCI_SRIOV_NUM_BARS; i++) {
		res = &dev->resource[i + PCI_IOV_RESOURCES];
		if (!res->parent)
			continue;
		virtfn->resource[i].name = FUNC10(virtfn);
		virtfn->resource[i].flags = res->flags;
		size = FUNC7(dev, i + PCI_IOV_RESOURCES);
		virtfn->resource[i].start = res->start + size * id;
		virtfn->resource[i].end = virtfn->resource[i].start + size - 1;
		rc = FUNC14(res, &virtfn->resource[i]);
		FUNC0(rc);
	}

	FUNC6(virtfn, virtfn->bus);

	FUNC15(buf, "virtfn%u", id);
	rc = FUNC16(&dev->dev.kobj, &virtfn->dev.kobj, buf);
	if (rc)
		goto failed2;
	rc = FUNC16(&virtfn->dev.kobj, &dev->dev.kobj, "physfn");
	if (rc)
		goto failed3;

	FUNC1(&virtfn->dev.kobj, KOBJ_CHANGE);

	FUNC3(virtfn);

	return 0;

failed3:
	FUNC17(&dev->dev.kobj, buf);
failed2:
	FUNC13(virtfn);
failed1:
	FUNC5(dev);
failed0:
	FUNC19(dev->bus, bus);
failed:

	return rc;
}