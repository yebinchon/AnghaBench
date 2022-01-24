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
struct pci_bus_ops {int /*<<< orphan*/  list; } ;
struct pci_bus {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct pci_ops aer_inj_pci_ops ; 
 int /*<<< orphan*/  inject_lock ; 
 int /*<<< orphan*/  FUNC0 (struct pci_bus_ops*) ; 
 struct pci_bus_ops* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_bus_ops*,struct pci_bus*,struct pci_ops*) ; 
 int /*<<< orphan*/  pci_bus_ops_list ; 
 struct pci_ops* FUNC4 (struct pci_bus*,struct pci_ops*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct pci_bus *bus)
{
	struct pci_ops *ops;
	struct pci_bus_ops *bus_ops;
	unsigned long flags;

	bus_ops = FUNC1(sizeof(*bus_ops), GFP_KERNEL);
	if (!bus_ops)
		return -ENOMEM;
	ops = FUNC4(bus, &aer_inj_pci_ops);
	FUNC5(&inject_lock, flags);
	if (ops == &aer_inj_pci_ops)
		goto out;
	FUNC3(bus_ops, bus, ops);
	FUNC2(&bus_ops->list, &pci_bus_ops_list);
	bus_ops = NULL;
out:
	FUNC6(&inject_lock, flags);
	FUNC0(bus_ops);
	return 0;
}