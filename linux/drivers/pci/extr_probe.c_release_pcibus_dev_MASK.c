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
struct pci_bus {int /*<<< orphan*/  bridge; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct pci_bus* FUNC4 (struct device*) ; 

__attribute__((used)) static void FUNC5(struct device *dev)
{
	struct pci_bus *pci_bus = FUNC4(dev);

	FUNC3(pci_bus->bridge);
	FUNC1(pci_bus);
	FUNC2(pci_bus);
	FUNC0(pci_bus);
}