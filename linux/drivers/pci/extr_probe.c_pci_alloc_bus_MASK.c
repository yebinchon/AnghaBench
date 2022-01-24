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
struct pci_bus {int /*<<< orphan*/  domain_nr; void* cur_bus_speed; void* max_bus_speed; int /*<<< orphan*/  resources; int /*<<< orphan*/  slots; int /*<<< orphan*/  devices; int /*<<< orphan*/  children; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* PCI_SPEED_UNKNOWN ; 
 struct pci_bus* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct pci_bus *FUNC2(struct pci_bus *parent)
{
	struct pci_bus *b;

	b = FUNC1(sizeof(*b), GFP_KERNEL);
	if (!b)
		return NULL;

	FUNC0(&b->node);
	FUNC0(&b->children);
	FUNC0(&b->devices);
	FUNC0(&b->slots);
	FUNC0(&b->resources);
	b->max_bus_speed = PCI_SPEED_UNKNOWN;
	b->cur_bus_speed = PCI_SPEED_UNKNOWN;
#ifdef CONFIG_PCI_DOMAINS_GENERIC
	if (parent)
		b->domain_nr = parent->domain_nr;
#endif
	return b;
}