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
struct pci_device_id {int dummy; } ;
struct pci_dev {int device; int /*<<< orphan*/  dev; } ;
struct csio_lnode {int /*<<< orphan*/  portid; } ;
struct csio_hw {int num_pports; int /*<<< orphan*/  lock; TYPE_1__* pport; int /*<<< orphan*/  fwrev; int /*<<< orphan*/  fwrev_str; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSIO_HWF_ROOT_NO_RELAXED_ORDERING ; 
 int CSIO_HW_CHIP_MASK ; 
 int EINVAL ; 
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct csio_hw* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct csio_hw*) ; 
 int FUNC6 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct csio_lnode*) ; 
 scalar_t__ FUNC11 (struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC12 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC13 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*,int*) ; 
 int FUNC16 (struct pci_dev*,int*) ; 
 struct csio_lnode* FUNC17 (struct csio_hw*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*,struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC20 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*,int,int,int,int) ; 

__attribute__((used)) static int FUNC24(struct pci_dev *pdev, const struct pci_device_id *id)
{
	int rv;
	int bars;
	int i;
	struct csio_hw *hw;
	struct csio_lnode *ln;

	/* probe only T5 and T6 cards */
	if (!FUNC8((pdev->device & CSIO_HW_CHIP_MASK)) &&
	    !FUNC9((pdev->device & CSIO_HW_CHIP_MASK)))
		return -ENODEV;

	rv = FUNC16(pdev, &bars);
	if (rv)
		goto err;

	hw = FUNC4(pdev);
	if (!hw) {
		rv = -ENODEV;
		goto err_pci_exit;
	}

	if (!FUNC20(pdev))
		hw->flags |= CSIO_HWF_ROOT_NO_RELAXED_ORDERING;

	FUNC19(pdev, hw);

	rv = FUNC6(hw);
	if (rv) {
		if (rv == -EINVAL) {
			FUNC18(&pdev->dev,
				"Failed to start FW, continuing in debug mode.\n");
			return 0;
		}
		goto err_lnode_exit;
	}

	FUNC23(hw->fwrev_str, "%u.%u.%u.%u\n",
		    FUNC1(hw->fwrev),
		    FUNC3(hw->fwrev),
		    FUNC2(hw->fwrev),
		    FUNC0(hw->fwrev));

	for (i = 0; i < hw->num_pports; i++) {
		ln = FUNC17(hw, &pdev->dev, true, NULL);
		if (!ln) {
			rv = -ENODEV;
			break;
		}
		/* Initialize portid */
		ln->portid = hw->pport[i].portid;

		FUNC21(&hw->lock);
		if (FUNC11(ln) != 0)
			rv = -ENODEV;
		FUNC22(&hw->lock);

		if (rv)
			break;

		FUNC10(ln);
	}

	if (rv)
		goto err_lnode_exit;

	return 0;

err_lnode_exit:
	FUNC12(hw);
	FUNC21(&hw->lock);
	FUNC7(hw);
	FUNC22(&hw->lock);
	FUNC14(hw);
	FUNC13(hw, 0);
	FUNC5(hw);
err_pci_exit:
	FUNC15(pdev, &bars);
err:
	FUNC18(&pdev->dev, "probe of device failed: %d\n", rv);
	return rv;
}