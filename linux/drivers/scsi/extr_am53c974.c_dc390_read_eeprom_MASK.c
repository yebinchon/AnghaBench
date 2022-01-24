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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ DC390_EEPROM_LEN ; 
 scalar_t__ DC390_EEPROM_READ ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *pdev, u16 *ptr)
{
	u8 cmd = DC390_EEPROM_READ, i;

	for (i = 0; i < DC390_EEPROM_LEN; i++) {
		FUNC2(pdev, 0xc0, 0);
		FUNC3(160);

		FUNC1(pdev, cmd++);
		*ptr++ = FUNC0(pdev);

		FUNC2(pdev, 0x80, 0);
		FUNC2(pdev, 0x80, 0);
		FUNC3(160);
	}
}