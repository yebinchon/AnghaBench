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
struct pci_dev {int dummy; } ;
struct csio_hw {int /*<<< orphan*/  regstart; int /*<<< orphan*/  drv_version; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSIO_DRV_VERSION ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,char*,struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_hw*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_hw*) ; 
 scalar_t__ FUNC4 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct csio_hw*) ; 
 scalar_t__ FUNC6 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct csio_hw*) ; 
 struct csio_hw* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct csio_hw *FUNC15(struct pci_dev *pdev)
{
	struct csio_hw *hw;

	hw = FUNC11(sizeof(struct csio_hw), GFP_KERNEL);
	if (!hw)
		goto err;

	hw->pdev = pdev;
	FUNC14(hw->drv_version, CSIO_DRV_VERSION, 32);

	/* memory pool/DMA pool allocation */
	if (FUNC6(hw))
		goto err_free_hw;

	/* Get the start address of registers from BAR 0 */
	hw->regstart = FUNC8(FUNC13(pdev, 0),
				       FUNC12(pdev, 0));
	if (!hw->regstart) {
		FUNC2(hw, "Could not map BAR 0, regstart = %p\n",
			 hw->regstart);
		goto err_resource_free;
	}

	FUNC5(hw);

	if (FUNC4(hw))
		goto err_unmap_bar;

	FUNC1(hw);

	FUNC0(hw, "hw:%p\n", hw);

	return hw;

err_unmap_bar:
	FUNC3(hw);
	FUNC9(hw->regstart);
err_resource_free:
	FUNC7(hw);
err_free_hw:
	FUNC10(hw);
err:
	return NULL;
}