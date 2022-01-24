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
struct seq_buf {int dummy; } ;
struct pci_dev {int dummy; } ;
typedef  enum pci_p2pdma_map_type { ____Placeholder_pci_p2pdma_map_type } pci_p2pdma_map_type ;

/* Variables and functions */
 int PCI_P2PDMA_MAP_BUS_ADDR ; 
 int PCI_P2PDMA_MAP_THRU_HOST_BRIDGE ; 
 scalar_t__ FUNC0 (struct pci_dev*) ; 
 struct pci_dev* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_buf*,struct pci_dev*) ; 

__attribute__((used)) static enum pci_p2pdma_map_type
FUNC3(struct pci_dev *provider, struct pci_dev *client,
		int *dist, bool *acs_redirects, struct seq_buf *acs_list)
{
	struct pci_dev *a = provider, *b = client, *bb;
	int dist_a = 0;
	int dist_b = 0;
	int acs_cnt = 0;

	if (acs_redirects)
		*acs_redirects = false;

	/*
	 * Note, we don't need to take references to devices returned by
	 * pci_upstream_bridge() seeing we hold a reference to a child
	 * device which will already hold a reference to the upstream bridge.
	 */

	while (a) {
		dist_b = 0;

		if (FUNC0(a)) {
			FUNC2(acs_list, a);
			acs_cnt++;
		}

		bb = b;

		while (bb) {
			if (a == bb)
				goto check_b_path_acs;

			bb = FUNC1(bb);
			dist_b++;
		}

		a = FUNC1(a);
		dist_a++;
	}

	if (dist)
		*dist = dist_a + dist_b;

	return PCI_P2PDMA_MAP_THRU_HOST_BRIDGE;

check_b_path_acs:
	bb = b;

	while (bb) {
		if (a == bb)
			break;

		if (FUNC0(bb)) {
			FUNC2(acs_list, bb);
			acs_cnt++;
		}

		bb = FUNC1(bb);
	}

	if (dist)
		*dist = dist_a + dist_b;

	if (acs_cnt) {
		if (acs_redirects)
			*acs_redirects = true;

		return PCI_P2PDMA_MAP_THRU_HOST_BRIDGE;
	}

	return PCI_P2PDMA_MAP_BUS_ADDR;
}