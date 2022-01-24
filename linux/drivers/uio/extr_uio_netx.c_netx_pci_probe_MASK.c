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
struct uio_info {char* name; char* version; TYPE_1__* mem; int /*<<< orphan*/  handler; int /*<<< orphan*/  irq_flags; int /*<<< orphan*/  irq; } ;
struct pci_device_id {int device; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {scalar_t__ internal_addr; int /*<<< orphan*/  memtype; int /*<<< orphan*/  size; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 scalar_t__ DPM_HOST_INT_EN0 ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
#define  PCI_DEVICE_ID_HILSCHER_NETPLC 129 
#define  PCI_DEVICE_ID_HILSCHER_NETX 128 
 int /*<<< orphan*/  UIO_MEM_PHYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct uio_info*) ; 
 struct uio_info* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netx_handler ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 scalar_t__ FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 scalar_t__ FUNC9 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,struct uio_info*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,struct uio_info*) ; 

__attribute__((used)) static int FUNC14(struct pci_dev *dev,
					const struct pci_device_id *id)
{
	struct uio_info *info;
	int bar;

	info = FUNC5(sizeof(struct uio_info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	if (FUNC7(dev))
		goto out_free;

	if (FUNC9(dev, "netx"))
		goto out_disable;

	switch (id->device) {
	case PCI_DEVICE_ID_HILSCHER_NETX:
		bar = 0;
		info->name = "netx";
		break;
	case PCI_DEVICE_ID_HILSCHER_NETPLC:
		bar = 0;
		info->name = "netplc";
		break;
	default:
		bar = 2;
		info->name = "netx_plx";
	}

	/* BAR0 or 2 points to the card's dual port memory */
	info->mem[0].addr = FUNC11(dev, bar);
	if (!info->mem[0].addr)
		goto out_release;
	info->mem[0].internal_addr = FUNC1(FUNC11(dev, bar),
						FUNC10(dev, bar));

	if (!info->mem[0].internal_addr)
			goto out_release;

	info->mem[0].size = FUNC10(dev, bar);
	info->mem[0].memtype = UIO_MEM_PHYS;
	info->irq = dev->irq;
	info->irq_flags = IRQF_SHARED;
	info->handler = netx_handler;
	info->version = "0.0.1";

	/* Make sure all interrupts are disabled */
	FUNC3(0, info->mem[0].internal_addr + DPM_HOST_INT_EN0);

	if (FUNC13(&dev->dev, info))
		goto out_unmap;

	FUNC12(dev, info);
	FUNC0(&dev->dev, "Found %s card, registered UIO device.\n",
				info->name);

	return 0;

out_unmap:
	FUNC2(info->mem[0].internal_addr);
out_release:
	FUNC8(dev);
out_disable:
	FUNC6(dev);
out_free:
	FUNC4(info);
	return -ENODEV;
}