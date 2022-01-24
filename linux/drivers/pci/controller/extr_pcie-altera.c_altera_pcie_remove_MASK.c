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
struct altera_pcie {int /*<<< orphan*/  resources; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct altera_pcie*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct pci_host_bridge* FUNC2 (struct altera_pcie*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct altera_pcie* FUNC5 (struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct altera_pcie *pcie = FUNC5(pdev);
	struct pci_host_bridge *bridge = FUNC2(pcie);

	FUNC4(bridge->bus);
	FUNC3(bridge->bus);
	FUNC1(&pcie->resources);
	FUNC0(pcie);

	return 0;
}