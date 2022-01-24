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
struct pci_dev {unsigned int class; int /*<<< orphan*/  dev; int /*<<< orphan*/  devfn; TYPE_1__* bus; } ;
struct TYPE_2__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int DL_FLAG_PM_RUNTIME ; 
 int DL_FLAG_STATELESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,char*,int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct pci_dev *pdev, unsigned int consumer,
				   unsigned int supplier, unsigned int class,
				   unsigned int class_shift)
{
	struct pci_dev *supplier_pdev;

	if (FUNC1(pdev->devfn) != consumer)
		return;

	supplier_pdev = FUNC7(FUNC5(pdev->bus),
				pdev->bus->number,
				FUNC0(FUNC2(pdev->devfn), supplier));
	if (!supplier_pdev || (supplier_pdev->class >> class_shift) != class) {
		FUNC4(supplier_pdev);
		return;
	}

	if (FUNC3(&pdev->dev, &supplier_pdev->dev,
			    DL_FLAG_STATELESS | DL_FLAG_PM_RUNTIME))
		FUNC8(pdev, "D0 power state depends on %s\n",
			 FUNC9(supplier_pdev));
	else
		FUNC6(pdev, "Cannot enforce power dependency on %s\n",
			FUNC9(supplier_pdev));

	FUNC10(&pdev->dev);
	FUNC4(supplier_pdev);
}