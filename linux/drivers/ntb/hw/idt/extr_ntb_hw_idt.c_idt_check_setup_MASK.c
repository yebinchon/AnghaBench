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
typedef  int u32 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int IDT_BARSETUP_EN ; 
 int IDT_BARSETUP_MODE_CFG ; 
 int IDT_BARSETUP_SIZE_CFG ; 
 int IDT_BARSETUP_SIZE_MASK ; 
 int /*<<< orphan*/  IDT_NT_BARSETUP0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC3(struct pci_dev *pdev)
{
	u32 data;
	int ret;

	/* Read the BARSETUP0 */
	ret = FUNC2(pdev, IDT_NT_BARSETUP0, &data);
	if (ret != 0) {
		FUNC1(&pdev->dev,
			"Failed to read BARSETUP0 config register");
		return ret;
	}

	/* Check whether the BAR0 register is enabled to be of config space */
	if (!(data & IDT_BARSETUP_EN) || !(data & IDT_BARSETUP_MODE_CFG)) {
		FUNC1(&pdev->dev, "BAR0 doesn't map config space");
		return -EINVAL;
	}

	/* Configuration space BAR0 must have certain size */
	if ((data & IDT_BARSETUP_SIZE_MASK) != IDT_BARSETUP_SIZE_CFG) {
		FUNC1(&pdev->dev, "Invalid size of config space");
		return -EINVAL;
	}

	FUNC0(&pdev->dev, "NTB device pre-initialized correctly");

	return 0;
}