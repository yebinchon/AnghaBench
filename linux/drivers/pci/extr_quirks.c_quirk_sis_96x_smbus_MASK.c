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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *dev)
{
	u8 val = 0;
	FUNC1(dev, 0x77, &val);
	if (val & 0x10) {
		FUNC0(dev, "Enabling SiS 96x SMBus\n");
		FUNC2(dev, 0x77, val & ~0x10);
	}
}