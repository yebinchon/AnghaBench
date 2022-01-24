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
typedef  int u32 ;
struct TYPE_3__ {scalar_t__ gen; int rev; } ;
struct TYPE_4__ {int isoc_reqs; int nb_type; int /*<<< orphan*/  nb_dev; int /*<<< orphan*/  smbus_dev; TYPE_1__ sb_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  AB_REG_BAR_HIGH ; 
 int /*<<< orphan*/  AB_REG_BAR_LOW ; 
 int /*<<< orphan*/  AB_REG_BAR_SB700 ; 
 scalar_t__ AMD_CHIPSET_BOLTON ; 
 scalar_t__ AMD_CHIPSET_HUDSON2 ; 
 scalar_t__ AMD_CHIPSET_SB700 ; 
 scalar_t__ AMD_CHIPSET_SB800 ; 
 int AX_DATAC ; 
 int AX_INDXC ; 
 int BIF_NB ; 
 int /*<<< orphan*/  NB_PCIE_INDX_ADDR ; 
 int /*<<< orphan*/  NB_PCIE_INDX_DATA ; 
 int NB_PIF0_PWRDOWN_0 ; 
 int NB_PIF0_PWRDOWN_1 ; 
 int PCIE_P_CNTL ; 
 TYPE_2__ amd_chipset ; 
 int /*<<< orphan*/  amd_lock ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC12(int disable)
{
	u32 addr, addr_low, addr_high, val;
	u32 bit = disable ? 0 : 1;
	unsigned long flags;

	FUNC10(&amd_lock, flags);

	if (disable) {
		amd_chipset.isoc_reqs++;
		if (amd_chipset.isoc_reqs > 1) {
			FUNC11(&amd_lock, flags);
			return;
		}
	} else {
		amd_chipset.isoc_reqs--;
		if (amd_chipset.isoc_reqs > 0) {
			FUNC11(&amd_lock, flags);
			return;
		}
	}

	if (amd_chipset.sb_type.gen == AMD_CHIPSET_SB800 ||
			amd_chipset.sb_type.gen == AMD_CHIPSET_HUDSON2 ||
			amd_chipset.sb_type.gen == AMD_CHIPSET_BOLTON) {
		FUNC5(AB_REG_BAR_LOW, 0xcd6);
		addr_low = FUNC2(0xcd7);
		FUNC5(AB_REG_BAR_HIGH, 0xcd6);
		addr_high = FUNC2(0xcd7);
		addr = addr_high << 8 | addr_low;

		FUNC7(0x30, FUNC1(addr));
		FUNC7(0x40, FUNC0(addr));
		FUNC7(0x34, FUNC1(addr));
		val = FUNC4(FUNC0(addr));
	} else if (amd_chipset.sb_type.gen == AMD_CHIPSET_SB700 &&
			amd_chipset.sb_type.rev <= 0x3b) {
		FUNC8(amd_chipset.smbus_dev,
					AB_REG_BAR_SB700, &addr);
		FUNC6(AX_INDXC, FUNC1(addr));
		FUNC6(0x40, FUNC0(addr));
		FUNC6(AX_DATAC, FUNC1(addr));
		val = FUNC3(FUNC0(addr));
	} else {
		FUNC11(&amd_lock, flags);
		return;
	}

	if (disable) {
		val &= ~0x08;
		val |= (1 << 4) | (1 << 9);
	} else {
		val |= 0x08;
		val &= ~((1 << 4) | (1 << 9));
	}
	FUNC7(val, FUNC0(addr));

	if (!amd_chipset.nb_dev) {
		FUNC11(&amd_lock, flags);
		return;
	}

	if (amd_chipset.nb_type == 1 || amd_chipset.nb_type == 3) {
		addr = PCIE_P_CNTL;
		FUNC9(amd_chipset.nb_dev,
					NB_PCIE_INDX_ADDR, addr);
		FUNC8(amd_chipset.nb_dev,
					NB_PCIE_INDX_DATA, &val);

		val &= ~(1 | (1 << 3) | (1 << 4) | (1 << 9) | (1 << 12));
		val |= bit | (bit << 3) | (bit << 12);
		val |= ((!bit) << 4) | ((!bit) << 9);
		FUNC9(amd_chipset.nb_dev,
					NB_PCIE_INDX_DATA, val);

		addr = BIF_NB;
		FUNC9(amd_chipset.nb_dev,
					NB_PCIE_INDX_ADDR, addr);
		FUNC8(amd_chipset.nb_dev,
					NB_PCIE_INDX_DATA, &val);
		val &= ~(1 << 8);
		val |= bit << 8;

		FUNC9(amd_chipset.nb_dev,
					NB_PCIE_INDX_DATA, val);
	} else if (amd_chipset.nb_type == 2) {
		addr = NB_PIF0_PWRDOWN_0;
		FUNC9(amd_chipset.nb_dev,
					NB_PCIE_INDX_ADDR, addr);
		FUNC8(amd_chipset.nb_dev,
					NB_PCIE_INDX_DATA, &val);
		if (disable)
			val &= ~(0x3f << 7);
		else
			val |= 0x3f << 7;

		FUNC9(amd_chipset.nb_dev,
					NB_PCIE_INDX_DATA, val);

		addr = NB_PIF0_PWRDOWN_1;
		FUNC9(amd_chipset.nb_dev,
					NB_PCIE_INDX_ADDR, addr);
		FUNC8(amd_chipset.nb_dev,
					NB_PCIE_INDX_DATA, &val);
		if (disable)
			val &= ~(0x3f << 7);
		else
			val |= 0x3f << 7;

		FUNC9(amd_chipset.nb_dev,
					NB_PCIE_INDX_DATA, val);
	}

	FUNC11(&amd_lock, flags);
	return;
}