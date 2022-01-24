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
struct ism_dev {int /*<<< orphan*/  smcd; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_IRQ_MSI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ism_dev*) ; 
 int /*<<< orphan*/  ism_handle_irq ; 
 int FUNC1 (struct ism_dev*) ; 
 int FUNC2 (struct pci_dev*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct ism_dev*) ; 
 int FUNC7 (struct ism_dev*) ; 
 int FUNC8 (struct ism_dev*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ism_dev*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ism_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct ism_dev*) ; 

__attribute__((used)) static int FUNC13(struct ism_dev *ism)
{
	struct pci_dev *pdev = ism->pdev;
	int ret;

	ret = FUNC2(pdev, 1, 1, PCI_IRQ_MSI);
	if (ret <= 0)
		goto out;

	ret = FUNC9(FUNC4(pdev, 0), ism_handle_irq, 0,
			  FUNC5(pdev), ism);
	if (ret)
		goto free_vectors;

	ret = FUNC8(ism);
	if (ret)
		goto free_irq;

	ret = FUNC7(ism);
	if (ret)
		goto unreg_sba;

	ret = FUNC1(ism);
	if (ret)
		goto unreg_ieq;

	ret = FUNC10(ism->smcd);
	if (ret)
		goto unreg_ieq;

	FUNC6(ism);
	return 0;

unreg_ieq:
	FUNC11(ism);
unreg_sba:
	FUNC12(ism);
free_irq:
	FUNC0(FUNC4(pdev, 0), ism);
free_vectors:
	FUNC3(pdev);
out:
	return ret;
}