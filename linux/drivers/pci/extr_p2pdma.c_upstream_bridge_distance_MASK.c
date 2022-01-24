#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct seq_buf {int dummy; } ;
struct pci_dev {TYPE_1__* p2pdma; } ;
typedef  enum pci_p2pdma_map_type { ____Placeholder_pci_p2pdma_map_type } pci_p2pdma_map_type ;
struct TYPE_2__ {int /*<<< orphan*/  map_types; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PCI_P2PDMA_MAP_NOT_SUPPORTED ; 
 int PCI_P2PDMA_MAP_THRU_HOST_BRIDGE ; 
 int FUNC0 (struct pci_dev*,struct pci_dev*,int*,int*,struct seq_buf*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum pci_p2pdma_map_type
FUNC5(struct pci_dev *provider, struct pci_dev *client,
		int *dist, bool *acs_redirects, struct seq_buf *acs_list)
{
	enum pci_p2pdma_map_type map_type;

	map_type = FUNC0(provider, client, dist,
					      acs_redirects, acs_list);

	if (map_type == PCI_P2PDMA_MAP_THRU_HOST_BRIDGE) {
		if (!FUNC1(provider, client))
			map_type = PCI_P2PDMA_MAP_NOT_SUPPORTED;
	}

	if (provider->p2pdma)
		FUNC4(&provider->p2pdma->map_types, FUNC2(client),
			 FUNC3(map_type), GFP_KERNEL);

	return map_type;
}