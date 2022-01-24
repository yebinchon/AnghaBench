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
struct pci_dev {int revision; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DEVICE_ID_VIA_8231 ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_VIA_82C686 ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_VIA ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 struct pci_dev* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int,int) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *dev)
{
	struct pci_dev *p;
	u8 busarb;

	/*
	 * Ok, we have a potential problem chipset here. Now see if we have
	 * a buggy southbridge.
	 */
	p = FUNC1(PCI_VENDOR_ID_VIA, PCI_DEVICE_ID_VIA_82C686, NULL);
	if (p != NULL) {

		/*
		 * 0x40 - 0x4f == 686B, 0x10 - 0x2f == 686A;
		 * thanks Dan Hollis.
		 * Check for buggy part revisions
		 */
		if (p->revision < 0x40 || p->revision > 0x42)
			goto exit;
	} else {
		p = FUNC1(PCI_VENDOR_ID_VIA, PCI_DEVICE_ID_VIA_8231, NULL);
		if (p == NULL)	/* No problem parts */
			goto exit;

		/* Check for buggy part revisions */
		if (p->revision < 0x10 || p->revision > 0x12)
			goto exit;
	}

	/*
	 * Ok we have the problem. Now set the PCI master grant to occur
	 * every master grant. The apparent bug is that under high PCI load
	 * (quite common in Linux of course) you can get data loss when the
	 * CPU is held off the bus for 3 bus master requests.  This happens
	 * to include the IDE controllers....
	 *
	 * VIA only apply this fix when an SB Live! is present but under
	 * both Linux and Windows this isn't enough, and we have seen
	 * corruption without SB Live! but with things like 3 UDMA IDE
	 * controllers. So we ignore that bit of the VIA recommendation..
	 */
	FUNC3(dev, 0x76, &busarb);

	/*
	 * Set bit 4 and bit 5 of byte 76 to 0x01
	 * "Master priority rotation on every PCI master grant"
	 */
	busarb &= ~(1<<5);
	busarb |= (1<<4);
	FUNC4(dev, 0x76, busarb);
	FUNC2(dev, "Applying VIA southbridge workaround\n");
exit:
	FUNC0(p);
}