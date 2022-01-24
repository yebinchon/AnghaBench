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
struct vme_bridge {struct ca91cx42_driver* driver_priv; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct ca91cx42_driver {unsigned int crcsr_bus; scalar_t__ base; int /*<<< orphan*/  crcsr_kernel; } ;

/* Variables and functions */
 int CA91CX42_VCSR_CTL_EN ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ VCSR_BS ; 
 scalar_t__ VCSR_CTL ; 
 scalar_t__ VCSR_TO ; 
 int /*<<< orphan*/  VME_CRCSR_BUF_SIZE ; 
 int FUNC0 (struct vme_bridge*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int geoid ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC6(struct vme_bridge *ca91cx42_bridge,
	struct pci_dev *pdev)
{
	unsigned int crcsr_addr;
	int tmp, slot;
	struct ca91cx42_driver *bridge;

	bridge = ca91cx42_bridge->driver_priv;

	slot = FUNC0(ca91cx42_bridge);

	/* Write CSR Base Address if slot ID is supplied as a module param */
	if (geoid)
		FUNC4(geoid << 27, bridge->base + VCSR_BS);

	FUNC2(&pdev->dev, "CR/CSR Offset: %d\n", slot);
	if (slot == 0) {
		FUNC1(&pdev->dev, "Slot number is unset, not configuring "
			"CR/CSR space\n");
		return -EINVAL;
	}

	/* Allocate mem for CR/CSR image */
	bridge->crcsr_kernel = FUNC5(pdev, VME_CRCSR_BUF_SIZE,
						     &bridge->crcsr_bus);
	if (!bridge->crcsr_kernel) {
		FUNC1(&pdev->dev, "Failed to allocate memory for CR/CSR "
			"image\n");
		return -ENOMEM;
	}

	crcsr_addr = slot * (512 * 1024);
	FUNC4(bridge->crcsr_bus - crcsr_addr, bridge->base + VCSR_TO);

	tmp = FUNC3(bridge->base + VCSR_CTL);
	tmp |= CA91CX42_VCSR_CTL_EN;
	FUNC4(tmp, bridge->base + VCSR_CTL);

	return 0;
}