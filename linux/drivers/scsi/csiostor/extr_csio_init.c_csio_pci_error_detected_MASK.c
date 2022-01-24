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
struct csio_hw {int /*<<< orphan*/  lock; int /*<<< orphan*/  sm; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;
typedef  scalar_t__ pci_channel_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  CSIO_HWE_PCIERR_DETECTED ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_NEED_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ pci_channel_io_perm_failure ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct csio_hw* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static pci_ers_result_t
FUNC9(struct pci_dev *pdev, pci_channel_state_t state)
{
	struct csio_hw *hw = FUNC6(pdev);

	FUNC1(hw);
	FUNC7(&hw->lock);

	/* Post PCI error detected evt to HW s/m
	 * HW s/m handles this evt by quiescing IOs, unregisters rports
	 * and finally takes the device to offline.
	 */
	FUNC4(&hw->sm, CSIO_HWE_PCIERR_DETECTED);
	FUNC8(&hw->lock);
	FUNC3(hw);
	FUNC2(hw, 0);
	FUNC0(hw, true);
	FUNC5(pdev);
	return state == pci_channel_io_perm_failure ?
		PCI_ERS_RESULT_DISCONNECT : PCI_ERS_RESULT_NEED_RESET;
}