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
typedef  int u8 ;
struct pci_dev {scalar_t__ device; } ;

/* Variables and functions */
 scalar_t__ PCI_DEVICE_ID_ASP_1200A ; 
 scalar_t__ PCI_DEVICE_ID_ASP_ABP940 ; 
 int /*<<< orphan*/  PCI_LATENCY_TIMER ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *pdev)
{
	if ((pdev->device == PCI_DEVICE_ID_ASP_1200A) ||
	    (pdev->device == PCI_DEVICE_ID_ASP_ABP940)) {
		FUNC1(pdev, PCI_LATENCY_TIMER, 0);
	} else {
		u8 latency;
		FUNC0(pdev, PCI_LATENCY_TIMER, &latency);
		if (latency < 0x20)
			FUNC1(pdev, PCI_LATENCY_TIMER, 0x20);
	}
}