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
struct pci_dev {int revision; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *pdev)
{
	u16 config;

	if (pdev->revision != 0x04)		/* Only C0 requires this */
		return;
	FUNC1(pdev, 0x40, &config);
	if (config & (1<<6)) {
		config &= ~(1<<6);
		FUNC2(pdev, 0x40, config);
		FUNC0(pdev, "C0 revision 450NX. Disabling PCI restreaming\n");
	}
}