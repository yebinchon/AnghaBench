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
typedef  int u16 ;
struct pci_dev {int device; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DEVICE_ID ; 
 int /*<<< orphan*/  SIS_DETECT_REGISTER ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *dev)
{
	u8 reg;
	u16 devid;

	FUNC0(dev, SIS_DETECT_REGISTER, &reg);
	FUNC2(dev, SIS_DETECT_REGISTER, reg | (1 << 6));
	FUNC1(dev, PCI_DEVICE_ID, &devid);
	if (((devid & 0xfff0) != 0x0960) && (devid != 0x0018)) {
		FUNC2(dev, SIS_DETECT_REGISTER, reg);
		return;
	}

	/*
	 * Ok, it now shows up as a 96x.  Run the 96x quirk by hand in case
	 * it has already been processed.  (Depends on link order, which is
	 * apparently not guaranteed)
	 */
	dev->device = devid;
	FUNC3(dev);
}