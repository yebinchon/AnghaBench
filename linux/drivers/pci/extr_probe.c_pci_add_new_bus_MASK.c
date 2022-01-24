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
struct pci_bus {int /*<<< orphan*/  children; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct pci_bus* FUNC2 (struct pci_bus*,struct pci_dev*,int) ; 
 int /*<<< orphan*/  pci_bus_sem ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct pci_bus *FUNC4(struct pci_bus *parent, struct pci_dev *dev,
				int busnr)
{
	struct pci_bus *child;

	child = FUNC2(parent, dev, busnr);
	if (child) {
		FUNC0(&pci_bus_sem);
		FUNC1(&child->node, &parent->children);
		FUNC3(&pci_bus_sem);
	}
	return child;
}