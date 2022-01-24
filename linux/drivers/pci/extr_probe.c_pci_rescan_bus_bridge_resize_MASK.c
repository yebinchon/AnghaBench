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
struct pci_dev {struct pci_bus* subordinate; } ;
struct pci_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_bus*) ; 
 unsigned int FUNC2 (struct pci_bus*) ; 

unsigned int FUNC3(struct pci_dev *bridge)
{
	unsigned int max;
	struct pci_bus *bus = bridge->subordinate;

	max = FUNC2(bus);

	FUNC0(bridge);

	FUNC1(bus);

	return max;
}