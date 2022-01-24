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
struct seq_buf {int len; scalar_t__* buffer; } ;
struct pci_dev {int dummy; } ;
typedef  enum pci_p2pdma_map_type { ____Placeholder_pci_p2pdma_map_type } pci_p2pdma_map_type ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int PCI_P2PDMA_MAP_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct pci_dev*,struct pci_dev*,int*,int*,struct seq_buf*) ; 

__attribute__((used)) static enum pci_p2pdma_map_type
FUNC6(struct pci_dev *provider, struct pci_dev *client,
			      int *dist)
{
	struct seq_buf acs_list;
	bool acs_redirects;
	int ret;

	FUNC4(&acs_list, FUNC1(PAGE_SIZE, GFP_KERNEL), PAGE_SIZE);
	if (!acs_list.buffer)
		return -ENOMEM;

	ret = FUNC5(provider, client, dist, &acs_redirects,
				       &acs_list);
	if (acs_redirects) {
		FUNC3(client, "ACS redirect is set between the client and provider (%s)\n",
			 FUNC2(provider));
		/* Drop final semicolon */
		acs_list.buffer[acs_list.len-1] = 0;
		FUNC3(client, "to disable ACS redirect for this path, add the kernel parameter: pci=disable_acs_redir=%s\n",
			 acs_list.buffer);
	}

	if (ret == PCI_P2PDMA_MAP_NOT_SUPPORTED) {
		FUNC3(client, "cannot be used for peer-to-peer DMA as the client and provider (%s) do not share an upstream bridge or whitelisted host bridge\n",
			 FUNC2(provider));
	}

	FUNC0(acs_list.buffer);

	return ret;
}