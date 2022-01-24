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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  asus_hides_smbus ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,int) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *dev)
{
	u16 val;

	if (FUNC0(!asus_hides_smbus))
		return;

	FUNC2(dev, 0xF2, &val);
	if (val & 0x8) {
		FUNC3(dev, 0xF2, val & (~0x8));
		FUNC2(dev, 0xF2, &val);
		if (val & 0x8)
			FUNC1(dev, "i801 SMBus device continues to play 'hide and seek'! 0x%x\n",
				 val);
		else
			FUNC1(dev, "Enabled i801 SMBus device\n");
	}
}