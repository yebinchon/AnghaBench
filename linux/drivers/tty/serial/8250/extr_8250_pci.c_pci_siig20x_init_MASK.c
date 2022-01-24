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
struct pci_dev {int device; } ;

/* Variables and functions */
 int PCI_DEVICE_ID_SIIG_2S1P_20x ; 
 int PCI_DEVICE_ID_SIIG_2S_20x ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int) ; 

__attribute__((used)) static int FUNC2(struct pci_dev *dev)
{
	u8 data;

	/* Change clock frequency for the first UART. */
	FUNC0(dev, 0x6f, &data);
	FUNC1(dev, 0x6f, data & 0xef);

	/* If this card has 2 UART, we have to do the same with second UART. */
	if (((dev->device & 0xfffc) == PCI_DEVICE_ID_SIIG_2S_20x) ||
	    ((dev->device & 0xfffc) == PCI_DEVICE_ID_SIIG_2S1P_20x)) {
		FUNC0(dev, 0x73, &data);
		FUNC1(dev, 0x73, data & 0xef);
	}
	return 0;
}