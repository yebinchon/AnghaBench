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
struct pci_bus {int dummy; } ;
struct bus_type {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 struct pci_bus* FUNC1 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static ssize_t FUNC5(struct bus_type *bus, const char *buf, size_t count)
{
	unsigned long val;
	struct pci_bus *b = NULL;

	if (FUNC0(buf, 0, &val) < 0)
		return -EINVAL;

	if (val) {
		FUNC2();
		while ((b = FUNC1(b)) != NULL)
			FUNC3(b);
		FUNC4();
	}
	return count;
}