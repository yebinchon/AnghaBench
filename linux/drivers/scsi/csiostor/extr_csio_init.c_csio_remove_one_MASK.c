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
struct csio_hw {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int*) ; 
 struct csio_hw* FUNC6 (struct pci_dev*) ; 
 int FUNC7 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct pci_dev *pdev)
{
	struct csio_hw *hw = FUNC6(pdev);
	int bars = FUNC7(pdev, IORESOURCE_MEM);

	FUNC2(hw);
	FUNC8(&hw->lock);

	/* Stops lnode, Rnode s/m
	 * Quiesce IOs.
	 * All sessions with remote ports are unregistered.
	 */
	FUNC1(hw);
	FUNC9(&hw->lock);
	FUNC4(hw);

	FUNC3(hw, 0);
	FUNC0(hw);
	FUNC5(pdev, &bars);
}