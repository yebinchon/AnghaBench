#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned long end; scalar_t__ name; scalar_t__ start; int /*<<< orphan*/  flags; } ;
struct vme_master_resource {int number; TYPE_1__ bus_resource; int /*<<< orphan*/ * kern_base; struct vme_bridge* parent; } ;
struct vme_bridge {char* name; int /*<<< orphan*/  parent; } ;
struct pci_dev {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  PCIBIOS_MIN_MEM ; 
 scalar_t__ VMENAMSIZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,unsigned long long,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*,int) ; 
 struct pci_dev* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct vme_master_resource *image,
	unsigned long long size)
{
	unsigned long long existing_size;
	int retval = 0;
	struct pci_dev *pdev;
	struct vme_bridge *ca91cx42_bridge;

	ca91cx42_bridge = image->parent;

	/* Find pci_dev container of dev */
	if (!ca91cx42_bridge->parent) {
		FUNC0(ca91cx42_bridge->parent, "Dev entry NULL\n");
		return -EINVAL;
	}
	pdev = FUNC9(ca91cx42_bridge->parent);

	existing_size = (unsigned long long)(image->bus_resource.end -
		image->bus_resource.start);

	/* If the existing size is OK, return */
	if (existing_size == (size - 1))
		return 0;

	if (existing_size != 0) {
		FUNC2(image->kern_base);
		image->kern_base = NULL;
		FUNC3(image->bus_resource.name);
		FUNC7(&image->bus_resource);
		FUNC5(&image->bus_resource, 0, sizeof(image->bus_resource));
	}

	if (!image->bus_resource.name) {
		image->bus_resource.name = FUNC4(VMENAMSIZ+3, GFP_ATOMIC);
		if (!image->bus_resource.name) {
			retval = -ENOMEM;
			goto err_name;
		}
	}

	FUNC8((char *)image->bus_resource.name, "%s.%d",
		ca91cx42_bridge->name, image->number);

	image->bus_resource.start = 0;
	image->bus_resource.end = (unsigned long)size;
	image->bus_resource.flags = IORESOURCE_MEM;

	retval = FUNC6(pdev->bus,
		&image->bus_resource, size, 0x10000, PCIBIOS_MIN_MEM,
		0, NULL, NULL);
	if (retval) {
		FUNC0(ca91cx42_bridge->parent, "Failed to allocate mem "
			"resource for window %d size 0x%lx start 0x%lx\n",
			image->number, (unsigned long)size,
			(unsigned long)image->bus_resource.start);
		goto err_resource;
	}

	image->kern_base = FUNC1(
		image->bus_resource.start, size);
	if (!image->kern_base) {
		FUNC0(ca91cx42_bridge->parent, "Failed to remap resource\n");
		retval = -ENOMEM;
		goto err_remap;
	}

	return 0;

err_remap:
	FUNC7(&image->bus_resource);
err_resource:
	FUNC3(image->bus_resource.name);
	FUNC5(&image->bus_resource, 0, sizeof(image->bus_resource));
err_name:
	return retval;
}