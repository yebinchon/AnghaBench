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
struct pci_p2pdma_whitelist_entry {short vendor; unsigned short device; int flags; } ;
struct pci_host_bridge {int /*<<< orphan*/  bus; } ;
struct pci_dev {unsigned short vendor; unsigned short device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int REQ_SAME_HOST_BRIDGE ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pci_p2pdma_whitelist_entry* pci_p2pdma_whitelist ; 

__attribute__((used)) static bool FUNC3(struct pci_host_bridge *host,
				    bool same_host_bridge)
{
	struct pci_dev *root = FUNC2(host->bus, FUNC0(0, 0));
	const struct pci_p2pdma_whitelist_entry *entry;
	unsigned short vendor, device;

	if (!root)
		return false;

	vendor = root->vendor;
	device = root->device;
	FUNC1(root);

	for (entry = pci_p2pdma_whitelist; entry->vendor; entry++) {
		if (vendor != entry->vendor || device != entry->device)
			continue;
		if (entry->flags & REQ_SAME_HOST_BRIDGE && !same_host_bridge)
			return false;

		return true;
	}

	return false;
}