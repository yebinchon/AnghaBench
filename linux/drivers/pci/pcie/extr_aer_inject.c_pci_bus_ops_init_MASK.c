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
struct pci_ops {int dummy; } ;
struct pci_bus_ops {struct pci_ops* ops; struct pci_bus* bus; int /*<<< orphan*/  list; } ;
struct pci_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct pci_bus_ops *bus_ops,
			     struct pci_bus *bus,
			     struct pci_ops *ops)
{
	FUNC0(&bus_ops->list);
	bus_ops->bus = bus;
	bus_ops->ops = ops;
}