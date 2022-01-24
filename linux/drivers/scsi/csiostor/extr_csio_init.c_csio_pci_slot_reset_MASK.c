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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct csio_hw {int /*<<< orphan*/  lock; int /*<<< orphan*/  sm; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  CSIO_HWE_PCIERR_SLOT_RESET ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 int FUNC0 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (struct pci_dev*) ; 
 struct csio_hw* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static pci_ers_result_t
FUNC10(struct pci_dev *pdev)
{
	struct csio_hw *hw = FUNC4(pdev);
	int ready;

	if (FUNC3(pdev)) {
		FUNC2(&pdev->dev, "cannot re-enable device in slot reset\n");
		return PCI_ERS_RESULT_DISCONNECT;
	}

	FUNC7(pdev);
	FUNC5(pdev);
	FUNC6(pdev);

	/* Bring HW s/m to ready state.
	 * but don't resume IOs.
	 */
	FUNC8(&hw->lock);
	FUNC1(&hw->sm, CSIO_HWE_PCIERR_SLOT_RESET);
	ready = FUNC0(hw);
	FUNC9(&hw->lock);

	if (ready) {
		return PCI_ERS_RESULT_RECOVERED;
	} else {
		FUNC2(&pdev->dev, "Can't initialize HW when in slot reset\n");
		return PCI_ERS_RESULT_DISCONNECT;
	}
}