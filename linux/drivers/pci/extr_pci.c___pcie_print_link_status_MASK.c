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
typedef  int u32 ;
struct pci_dev {int dummy; } ;
typedef  enum pcie_link_width { ____Placeholder_pcie_link_width } pcie_link_width ;
typedef  enum pci_bus_speed { ____Placeholder_pci_bus_speed } pci_bus_speed ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,char*,int,int,int /*<<< orphan*/ ,int,...) ; 
 char* FUNC2 (struct pci_dev*) ; 
 int FUNC3 (struct pci_dev*,struct pci_dev**,int*,int*) ; 
 int FUNC4 (struct pci_dev*,int*,int*) ; 

void FUNC5(struct pci_dev *dev, bool verbose)
{
	enum pcie_link_width width, width_cap;
	enum pci_bus_speed speed, speed_cap;
	struct pci_dev *limiting_dev = NULL;
	u32 bw_avail, bw_cap;

	bw_cap = FUNC4(dev, &speed_cap, &width_cap);
	bw_avail = FUNC3(dev, &limiting_dev, &speed, &width);

	if (bw_avail >= bw_cap && verbose)
		FUNC1(dev, "%u.%03u Gb/s available PCIe bandwidth (%s x%d link)\n",
			 bw_cap / 1000, bw_cap % 1000,
			 FUNC0(speed_cap), width_cap);
	else if (bw_avail < bw_cap)
		FUNC1(dev, "%u.%03u Gb/s available PCIe bandwidth, limited by %s x%d link at %s (capable of %u.%03u Gb/s with %s x%d link)\n",
			 bw_avail / 1000, bw_avail % 1000,
			 FUNC0(speed), width,
			 limiting_dev ? FUNC2(limiting_dev) : "<unknown>",
			 bw_cap / 1000, bw_cap % 1000,
			 FUNC0(speed_cap), width_cap);
}