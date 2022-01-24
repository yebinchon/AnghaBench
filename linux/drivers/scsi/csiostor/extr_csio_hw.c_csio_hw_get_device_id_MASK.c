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
struct TYPE_3__ {int vendor_id; int device_id; } ;
struct TYPE_4__ {TYPE_1__ pci; } ;
struct csio_hw {int chip_id; TYPE_2__ params; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int CSIO_HW_CHIP_MASK ; 
 int /*<<< orphan*/  PCI_DEVICE_ID ; 
 int /*<<< orphan*/  PCI_VENDOR_ID ; 
 int /*<<< orphan*/  FUNC0 (struct csio_hw*) ; 
 scalar_t__ FUNC1 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void
FUNC3(struct csio_hw *hw)
{
	/* Is the adapter device id cached already ?*/
	if (FUNC1(hw))
		return;

	/* Get the PCI vendor & device id */
	FUNC2(hw->pdev, PCI_VENDOR_ID,
			     &hw->params.pci.vendor_id);
	FUNC2(hw->pdev, PCI_DEVICE_ID,
			     &hw->params.pci.device_id);

	FUNC0(hw);
	hw->chip_id = (hw->params.pci.device_id & CSIO_HW_CHIP_MASK);

}