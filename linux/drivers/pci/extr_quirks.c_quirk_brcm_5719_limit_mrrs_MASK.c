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
 int FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *dev)
{
	u32 rev;

	FUNC0(dev, 0xf4, &rev);

	/* Only CAP the MRRS if the device is a 5719 A0 */
	if (rev == 0x05719000) {
		int readrq = FUNC1(dev);
		if (readrq > 2048)
			FUNC2(dev, 2048);
	}
}