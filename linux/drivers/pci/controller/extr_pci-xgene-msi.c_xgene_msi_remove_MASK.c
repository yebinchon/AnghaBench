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
struct xgene_msi {int /*<<< orphan*/ * bitmap; int /*<<< orphan*/ * msi_groups; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ CPUHP_PCI_XGENE_DEAD ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ pci_xgene_online ; 
 struct xgene_msi* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct xgene_msi*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct xgene_msi *msi = FUNC2(pdev);

	if (pci_xgene_online)
		FUNC0(pci_xgene_online);
	FUNC0(CPUHP_PCI_XGENE_DEAD);

	FUNC1(msi->msi_groups);

	FUNC1(msi->bitmap);
	msi->bitmap = NULL;

	FUNC3(msi);

	return 0;
}