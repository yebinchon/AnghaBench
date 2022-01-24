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
struct pcistub_device_id {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 struct pcistub_device_id* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_domains_supported ; 
 int /*<<< orphan*/  FUNC4 (struct pcistub_device_id*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int,int) ; 

__attribute__((used)) static int FUNC6(int domain, int bus, int slot, int func)
{
	struct pcistub_device_id *pci_dev_id;
	int rc = 0, devfn = FUNC0(slot, func);

	if (slot < 0) {
		for (slot = 0; !rc && slot < 32; ++slot)
			rc = FUNC6(domain, bus, slot, func);
		return rc;
	}

	if (func < 0) {
		for (func = 0; !rc && func < 8; ++func)
			rc = FUNC6(domain, bus, slot, func);
		return rc;
	}

	if ((
#if !defined(MODULE) /* pci_domains_supported is not being exported */ \
    || !defined(CONFIG_PCI_DOMAINS)
	     !pci_domains_supported ? domain :
#endif
	     domain < 0 || domain > 0xffff)
	    || bus < 0 || bus > 0xff
	    || FUNC2(devfn) != slot
	    || FUNC1(devfn) != func)
		return -EINVAL;

	pci_dev_id = FUNC3(sizeof(*pci_dev_id), GFP_KERNEL);
	if (!pci_dev_id)
		return -ENOMEM;

	FUNC5("wants to seize %04x:%02x:%02x.%d\n",
		 domain, bus, slot, func);

	FUNC4(pci_dev_id, domain, bus, devfn);

	return 0;
}