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
struct pci_device_id {int subdevice; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  internal_addr; void* memtype; void* size; void* addr; } ;

/* Variables and functions */
#define  CIF_SUBDEVICE_DEVICENET 129 
#define  CIF_SUBDEVICE_PROFIBUS 128 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 void* UIO_MEM_PHYS ; 
 int /*<<< orphan*/  hilscher_handler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uio_info*) ; 
 struct uio_info* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 scalar_t__ FUNC7 (struct pci_dev*,char*) ; 
 void* FUNC8 (struct pci_dev*,int) ; 
 void* FUNC9 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,struct uio_info*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,struct uio_info*) ; 

__attribute__((used)) static int FUNC12(struct pci_dev *dev,
					const struct pci_device_id *id)
{
	struct uio_info *info;

	info = FUNC2(sizeof(struct uio_info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	if (FUNC4(dev))
		goto out_free;

	if (FUNC7(dev, "hilscher"))
		goto out_disable;

	info->mem[0].addr = FUNC9(dev, 0);
	if (!info->mem[0].addr)
		goto out_release;
	info->mem[0].internal_addr = FUNC5(dev, 0);
	if (!info->mem[0].internal_addr)
		goto out_release;

	info->mem[0].size = FUNC8(dev, 0);
	info->mem[0].memtype = UIO_MEM_PHYS;
	info->mem[1].addr = FUNC9(dev, 2);
	info->mem[1].size = FUNC8(dev, 2);
	info->mem[1].memtype = UIO_MEM_PHYS;
	switch (id->subdevice) {
		case CIF_SUBDEVICE_PROFIBUS:
			info->name = "CIF_Profibus";
			break;
		case CIF_SUBDEVICE_DEVICENET:
			info->name = "CIF_Devicenet";
			break;
		default:
			info->name = "CIF_???";
	}
	info->version = "0.0.1";
	info->irq = dev->irq;
	info->irq_flags = IRQF_SHARED;
	info->handler = hilscher_handler;

	if (FUNC11(&dev->dev, info))
		goto out_unmap;

	FUNC10(dev, info);

	return 0;
out_unmap:
	FUNC0(info->mem[0].internal_addr);
out_release:
	FUNC6(dev);
out_disable:
	FUNC3(dev);
out_free:
	FUNC1 (info);
	return -ENODEV;
}