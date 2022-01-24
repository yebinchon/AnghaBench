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
struct pci_dev {scalar_t__ subsystem_vendor; scalar_t__ device; } ;

/* Variables and functions */
 scalar_t__ PCI_DEVICE_ID_VIA_8237 ; 
 scalar_t__ PCI_VENDOR_ID_ASUSTEK ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,int) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *dev)
{
	u8 val;
	int asus_hides_ac97 = 0;

	if (FUNC0(dev->subsystem_vendor == PCI_VENDOR_ID_ASUSTEK)) {
		if (dev->device == PCI_DEVICE_ID_VIA_8237)
			asus_hides_ac97 = 1;
	}

	if (!asus_hides_ac97)
		return;

	FUNC2(dev, 0x50, &val);
	if (val & 0xc0) {
		FUNC3(dev, 0x50, val & (~0xc0));
		FUNC2(dev, 0x50, &val);
		if (val & 0xc0)
			FUNC1(dev, "Onboard AC97/MC97 devices continue to play 'hide and seek'! 0x%x\n",
				 val);
		else
			FUNC1(dev, "Enabled onboard AC97/MC97 devices\n");
	}
}