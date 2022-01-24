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
typedef  int u16 ;
struct pci_dev {scalar_t__ hdr_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_BRIDGE_CONTROL ; 
 int PCI_BRIDGE_CTL_SERR ; 
 scalar_t__ PCI_HEADER_TYPE_BRIDGE ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *dev)
{
	u16 control;

	if (dev->hdr_type == PCI_HEADER_TYPE_BRIDGE) {

		/*
		 * A bridge will not forward ERR_ messages coming from an
		 * endpoint unless SERR# forwarding is enabled.
		 */
		FUNC0(dev, PCI_BRIDGE_CONTROL, &control);
		if (!(control & PCI_BRIDGE_CTL_SERR)) {
			control |= PCI_BRIDGE_CTL_SERR;
			FUNC1(dev, PCI_BRIDGE_CONTROL, control);
		}
	}
}