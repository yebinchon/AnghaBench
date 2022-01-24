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
struct pci_bus {int /*<<< orphan*/  self; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pci_bus*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_bus*) ; 
 scalar_t__ FUNC5 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_bus*) ; 

__attribute__((used)) static int FUNC7(struct pci_bus *bus)
{
	int rc;

	rc = FUNC2(bus, 1);
	if (rc)
		return rc;

	if (FUNC5(bus)) {
		FUNC4(bus);
		FUNC0();
		rc = FUNC1(bus->self);
		FUNC3(bus);
		FUNC6(bus);
	} else
		rc = -EAGAIN;

	return rc;
}