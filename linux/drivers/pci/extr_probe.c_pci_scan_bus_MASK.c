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
struct pci_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  busn_resource ; 
 int /*<<< orphan*/  iomem_resource ; 
 int /*<<< orphan*/  ioport_resource ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct pci_bus* FUNC2 (int /*<<< orphan*/ *,int,struct pci_ops*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_bus*) ; 
 int /*<<< orphan*/  resources ; 

struct pci_bus *FUNC5(int bus, struct pci_ops *ops,
					void *sysdata)
{
	FUNC0(resources);
	struct pci_bus *b;

	FUNC1(&resources, &ioport_resource);
	FUNC1(&resources, &iomem_resource);
	FUNC1(&resources, &busn_resource);
	b = FUNC2(NULL, bus, ops, sysdata, &resources);
	if (b) {
		FUNC4(b);
	} else {
		FUNC3(&resources);
	}
	return b;
}