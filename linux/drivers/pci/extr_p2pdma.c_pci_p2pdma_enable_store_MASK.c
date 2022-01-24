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
struct pci_dev {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 struct device* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 int /*<<< orphan*/  pci_bus_type ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char const*) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int*) ; 
 struct pci_dev* FUNC8 (struct device*) ; 

int FUNC9(const char *page, struct pci_dev **p2p_dev,
			    bool *use_p2pdma)
{
	struct device *dev;

	dev = FUNC0(&pci_bus_type, NULL, page);
	if (dev) {
		*use_p2pdma = true;
		*p2p_dev = FUNC8(dev);

		if (!FUNC4(*p2p_dev)) {
			FUNC3(*p2p_dev,
				"PCI device has no peer-to-peer memory: %s\n",
				page);
			FUNC2(*p2p_dev);
			return -ENODEV;
		}

		return 0;
	} else if ((page[0] == '0' || page[0] == '1') && !FUNC1(page[1])) {
		/*
		 * If the user enters a PCI device that  doesn't exist
		 * like "0000:01:00.1", we don't want strtobool to think
		 * it's a '0' when it's clearly not what the user wanted.
		 * So we require 0's and 1's to be exactly one character.
		 */
	} else if (!FUNC7(page, use_p2pdma)) {
		return 0;
	}

	FUNC5("No such PCI device: %.*s\n", (int)FUNC6(page, "\n"), page);
	return -ENODEV;
}