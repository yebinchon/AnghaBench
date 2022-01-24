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
typedef  int /*<<< orphan*/  u32 ;
struct pci_bus {int /*<<< orphan*/  number; } ;
struct aer_error {int dummy; } ;

/* Variables and functions */
 struct aer_error* FUNC0 (int,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC1 (struct pci_bus*,unsigned int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct aer_error*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  inject_lock ; 
 int FUNC3 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct pci_bus *bus, unsigned int devfn,
			       int where, int size, u32 *val)
{
	u32 *sim;
	struct aer_error *err;
	unsigned long flags;
	int domain;
	int rv;

	FUNC4(&inject_lock, flags);
	if (size != sizeof(u32))
		goto out;
	domain = FUNC3(bus);
	if (domain < 0)
		goto out;
	err = FUNC0(domain, bus->number, devfn);
	if (!err)
		goto out;

	sim = FUNC2(err, where, NULL);
	if (sim) {
		*val = *sim;
		FUNC5(&inject_lock, flags);
		return 0;
	}
out:
	rv = FUNC1(bus, devfn, where, size, val);
	FUNC5(&inject_lock, flags);
	return rv;
}