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
struct pci_dev {scalar_t__ devfn; } ;
struct cdns3_wrap {scalar_t__ devfn; int /*<<< orphan*/  plat_dev; } ;

/* Variables and functions */
 struct pci_dev* FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct cdns3_wrap*) ; 
 scalar_t__ FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *pdev)
{
	struct cdns3_wrap *wrap;
	struct pci_dev *func;

	func = FUNC0(pdev);

	wrap = (struct cdns3_wrap *)FUNC2(pdev);
	if (wrap->devfn == pdev->devfn)
		FUNC4(wrap->plat_dev);

	if (!FUNC3(func))
		FUNC1(wrap);
}