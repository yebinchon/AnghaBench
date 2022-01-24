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
struct intel_ntb_dev {int /*<<< orphan*/  ntb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_ntb_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_ntb_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_ntb_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct intel_ntb_dev* FUNC4 (struct pci_dev*) ; 
 scalar_t__ FUNC5 (struct pci_dev*) ; 
 scalar_t__ FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_ntb_dev*) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pdev)
{
	struct intel_ntb_dev *ndev = FUNC4(pdev);

	FUNC3(&ndev->ntb);
	FUNC2(ndev);
	if (FUNC5(pdev) || FUNC6(pdev))
		FUNC7(ndev);
	FUNC0(ndev);
	FUNC1(ndev);
}