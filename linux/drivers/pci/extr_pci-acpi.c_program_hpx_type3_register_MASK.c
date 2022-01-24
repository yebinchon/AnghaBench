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
typedef  scalar_t__ u16 ;
struct pci_dev {int dummy; } ;
struct hpx_type3 {int device_type; int function_type; int config_space_location; int match_mask_and; int match_value; int reg_mask_and; int reg_mask_or; scalar_t__ reg_offset; scalar_t__ match_offset; int /*<<< orphan*/  pci_exp_cap_ver; int /*<<< orphan*/  pci_exp_cap_id; } ;

/* Variables and functions */
#define  HPX_CFG_DVSEC 132 
#define  HPX_CFG_PCICFG 131 
#define  HPX_CFG_PCIE_CAP 130 
#define  HPX_CFG_PCIE_CAP_EXT 129 
#define  HPX_CFG_VEND_CAP 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pci_dev*) ; 
 int FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,char*,scalar_t__,int,int) ; 
 scalar_t__ FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC10(struct pci_dev *dev,
				       const struct hpx_type3 *reg)
{
	u32 match_reg, write_reg, header, orig_value;
	u16 pos;

	if (!(FUNC2(dev) & reg->device_type))
		return;

	if (!(FUNC3(dev) & reg->function_type))
		return;

	switch (reg->config_space_location) {
	case HPX_CFG_PCICFG:
		pos = 0;
		break;
	case HPX_CFG_PCIE_CAP:
		pos = FUNC5(dev, reg->pci_exp_cap_id);
		if (pos == 0)
			return;

		break;
	case HPX_CFG_PCIE_CAP_EXT:
		pos = FUNC6(dev, reg->pci_exp_cap_id);
		if (pos == 0)
			return;

		FUNC7(dev, pos, &header);
		if (!FUNC1(FUNC0(header),
					  reg->pci_exp_cap_ver))
			return;

		break;
	case HPX_CFG_VEND_CAP:	/* Fall through */
	case HPX_CFG_DVSEC:	/* Fall through */
	default:
		FUNC8(dev, "Encountered _HPX type 3 with unsupported config space location");
		return;
	}

	FUNC7(dev, pos + reg->match_offset, &match_reg);

	if ((match_reg & reg->match_mask_and) != reg->match_value)
		return;

	FUNC7(dev, pos + reg->reg_offset, &write_reg);
	orig_value = write_reg;
	write_reg &= reg->reg_mask_and;
	write_reg |= reg->reg_mask_or;

	if (orig_value == write_reg)
		return;

	FUNC9(dev, pos + reg->reg_offset, write_reg);

	FUNC4(dev, "Applied _HPX3 at [0x%x]: 0x%08x -> 0x%08x",
		pos, orig_value, write_reg);
}