#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_3__ {int vpd_cap_addr; } ;
struct TYPE_4__ {TYPE_1__ pci; } ;
struct csio_hw {int /*<<< orphan*/  pdev; TYPE_2__ params; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int EEPROMVSIZE ; 
 int EEPROM_MAX_RD_POLL ; 
 int EINVAL ; 
 int PCI_VPD_ADDR ; 
 int PCI_VPD_ADDR_F ; 
 int PCI_VPD_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(struct csio_hw *hw, uint32_t addr, uint32_t *data)
{
	uint16_t val = 0;
	int attempts = EEPROM_MAX_RD_POLL;
	uint32_t base = hw->params.pci.vpd_cap_addr;

	if (addr >= EEPROMVSIZE || (addr & 3))
		return -EINVAL;

	FUNC4(hw->pdev, base + PCI_VPD_ADDR, (uint16_t)addr);

	do {
		FUNC5(10);
		FUNC3(hw->pdev, base + PCI_VPD_ADDR, &val);
	} while (!(val & PCI_VPD_ADDR_F) && --attempts);

	if (!(val & PCI_VPD_ADDR_F)) {
		FUNC0(hw, "reading EEPROM address 0x%x failed\n", addr);
		return -EINVAL;
	}

	FUNC2(hw->pdev, base + PCI_VPD_DATA, data);
	*data = FUNC1(*(__le32 *)data);

	return 0;
}