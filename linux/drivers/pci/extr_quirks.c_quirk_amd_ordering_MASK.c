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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *dev)
{
	u32 pcic;
	FUNC0(dev, 0x4C, &pcic);
	if ((pcic & 6) != 6) {
		pcic |= 6;
		FUNC1(dev, "BIOS failed to enable PCI standards compliance; fixing this error\n");
		FUNC2(dev, 0x4C, pcic);
		FUNC0(dev, 0x84, &pcic);
		pcic |= (1 << 23);	/* Required in this mode */
		FUNC2(dev, 0x84, pcic);
	}
}