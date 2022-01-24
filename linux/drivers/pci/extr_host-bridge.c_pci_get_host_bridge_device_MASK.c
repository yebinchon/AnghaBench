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
struct pci_dev {int /*<<< orphan*/  bus; } ;
struct pci_bus {struct device* bridge; } ;
struct device {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 struct pci_bus* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

struct device *FUNC2(struct pci_dev *dev)
{
	struct pci_bus *root_bus = FUNC0(dev->bus);
	struct device *bridge = root_bus->bridge;

	FUNC1(&bridge->kobj);
	return bridge;
}