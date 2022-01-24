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
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *pdev, u8 cmd)
{
	u8 carry_flag = 1, j = 0x80, bval;
	int i;

	for (i = 0; i < 9; i++) {
		if (carry_flag) {
			FUNC0(pdev, 0x80, 0x40);
			bval = 0xc0;
		} else
			bval = 0x80;

		FUNC1(160);
		FUNC0(pdev, 0x80, bval);
		FUNC1(160);
		FUNC0(pdev, 0x80, 0);
		FUNC1(160);

		carry_flag = (cmd & j) ? 1 : 0;
		j >>= 1;
	}
}