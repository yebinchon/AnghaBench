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
struct platform_device {int dummy; } ;
struct pci_host_bridge {int /*<<< orphan*/  bus; } ;
struct mtk_pcie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mtk_pcie*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_pcie*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_pcie*) ; 
 struct pci_host_bridge* FUNC3 (struct mtk_pcie*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct mtk_pcie* FUNC6 (struct platform_device*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct mtk_pcie *pcie = FUNC6(pdev);
	struct pci_host_bridge *host = FUNC3(pcie);

	FUNC5(host->bus);
	FUNC4(host->bus);
	FUNC0(pcie);

	FUNC1(pcie);

	FUNC2(pcie);

	return 0;
}