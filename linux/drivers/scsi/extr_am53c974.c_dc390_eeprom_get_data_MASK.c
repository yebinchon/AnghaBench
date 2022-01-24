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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static u16 FUNC3(struct pci_dev *pdev)
{
	int i;
	u16 wval = 0;
	u8 bval;

	for (i = 0; i < 16; i++) {
		wval <<= 1;

		FUNC1(pdev, 0x80, 0x80);
		FUNC2(160);
		FUNC1(pdev, 0x80, 0x40);
		FUNC2(160);
		FUNC0(pdev, 0x00, &bval);

		if (bval == 0x22)
			wval |= 1;
	}

	return wval;
}