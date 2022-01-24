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
struct pci_dev {scalar_t__ vendor; int is_thunderbolt; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_EXT_CAP_ID_VNDR ; 
 scalar_t__ PCI_VENDOR_ID_INTEL ; 
 scalar_t__ PCI_VNDR_HEADER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PCI_VSEC_ID_INTEL_TBT ; 
 int FUNC1 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *dev)
{
	int vsec = 0;
	u32 header;

	while ((vsec = FUNC1(dev, vsec,
						    PCI_EXT_CAP_ID_VNDR))) {
		FUNC2(dev, vsec + PCI_VNDR_HEADER, &header);

		/* Is the device part of a Thunderbolt controller? */
		if (dev->vendor == PCI_VENDOR_ID_INTEL &&
		    FUNC0(header) == PCI_VSEC_ID_INTEL_TBT) {
			dev->is_thunderbolt = 1;
			return;
		}
	}
}