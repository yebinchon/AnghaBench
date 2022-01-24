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
struct pci_dev {scalar_t__ hdr_type; } ;

/* Variables and functions */
 scalar_t__ PCI_HEADER_TYPE_BRIDGE ; 
 scalar_t__ PCI_HEADER_TYPE_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int,int,int) ; 

__attribute__((used)) static void FUNC1(struct pci_dev *pdev)
{
	if (pdev->hdr_type == PCI_HEADER_TYPE_NORMAL) {
		FUNC0(pdev, 10, 15, 0, false);
		/* Restore BARs before the command register. */
		FUNC0(pdev, 4, 9, 10, false);
		FUNC0(pdev, 0, 3, 0, false);
	} else if (pdev->hdr_type == PCI_HEADER_TYPE_BRIDGE) {
		FUNC0(pdev, 12, 15, 0, false);

		/*
		 * Force rewriting of prefetch registers to avoid S3 resume
		 * issues on Intel PCI bridges that occur when these
		 * registers are not explicitly written.
		 */
		FUNC0(pdev, 9, 11, 0, true);
		FUNC0(pdev, 0, 8, 0, false);
	} else {
		FUNC0(pdev, 0, 15, 0, false);
	}
}