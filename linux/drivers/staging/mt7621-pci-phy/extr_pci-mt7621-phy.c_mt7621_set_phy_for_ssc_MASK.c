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
struct mt7621_pci_phy_instance {int index; } ;
struct mt7621_pci_phy {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int RG_P0_TO_P1_WIDTH ; 
 int RG_PE1_FRC_H_XTAL_REG ; 
 int RG_PE1_FRC_H_XTAL_TYPE ; 
 int RG_PE1_FRC_MSTCKDIV ; 
 int RG_PE1_FRC_PHY_EN ; 
 int RG_PE1_FRC_PHY_REG ; 
 int RG_PE1_H_LCDDS_SSC_DELTA ; 
 int RG_PE1_H_LCDDS_SSC_DELTA1 ; 
 int FUNC0 (int) ; 
 int RG_PE1_H_LCDDS_SSC_DELTA_REG ; 
 int FUNC1 (int) ; 
 int RG_PE1_H_LCDDS_SSC_PRD ; 
 int RG_PE1_H_LCDDS_SSC_PRD_REG ; 
 int FUNC2 (int) ; 
 int RG_PE1_H_PLL_BC ; 
 int FUNC3 (int) ; 
 int RG_PE1_H_PLL_BP ; 
 int FUNC4 (int) ; 
 int RG_PE1_H_PLL_BR ; 
 int RG_PE1_H_PLL_BR_REG ; 
 int FUNC5 (int) ; 
 int RG_PE1_H_PLL_FBKSEL ; 
 int RG_PE1_H_PLL_FBKSEL_REG ; 
 int FUNC6 (int) ; 
 int RG_PE1_H_PLL_IC ; 
 int FUNC7 (int) ; 
 int RG_PE1_H_PLL_IR ; 
 int FUNC8 (int) ; 
 int RG_PE1_H_PLL_PREDIV ; 
 int FUNC9 (int) ; 
 int RG_PE1_H_PLL_REG ; 
 int RG_PE1_H_XTAL_TYPE ; 
 int FUNC10 (int) ; 
 int RG_PE1_LCDDS_CLK_PH_INV ; 
 int RG_PE1_LCDDS_CLK_PH_INV_REG ; 
 int RG_PE1_MSTCKDIV ; 
 int RG_PE1_MSTCKDIV_REG ; 
 int FUNC11 (int) ; 
 int RG_PE1_PHY_EN ; 
 int RG_PE1_PLL_DIVEN ; 
 int FUNC12 (int) ; 
 int /*<<< orphan*/  SYSC_REG_SYSTEM_CONFIG0 ; 
 int /*<<< orphan*/  FUNC13 (struct device*,char*) ; 
 int FUNC14 (struct mt7621_pci_phy*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct mt7621_pci_phy*,int,int) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(struct mt7621_pci_phy *phy,
				   struct mt7621_pci_phy_instance *instance)
{
	struct device *dev = phy->dev;
	u32 reg = FUNC16(SYSC_REG_SYSTEM_CONFIG0);
	u32 offset;
	u32 val;

	reg = (reg >> 6) & 0x7;
	/* Set PCIe Port PHY to disable SSC */
	/* Debug Xtal Type */
	val = FUNC14(phy, RG_PE1_FRC_H_XTAL_REG);
	val &= ~(RG_PE1_FRC_H_XTAL_TYPE | RG_PE1_H_XTAL_TYPE);
	val |= RG_PE1_FRC_H_XTAL_TYPE;
	val |= FUNC10(0x00);
	FUNC15(phy, val, RG_PE1_FRC_H_XTAL_REG);

	/* disable port */
	offset = (instance->index != 1) ?
		RG_PE1_FRC_PHY_REG : RG_PE1_FRC_PHY_REG + RG_P0_TO_P1_WIDTH;
	val = FUNC14(phy, offset);
	val &= ~(RG_PE1_FRC_PHY_EN | RG_PE1_PHY_EN);
	val |= RG_PE1_FRC_PHY_EN;
	FUNC15(phy, val, offset);

	/* Set Pre-divider ratio (for host mode) */
	val = FUNC14(phy, RG_PE1_H_PLL_REG);
	val &= ~(RG_PE1_H_PLL_PREDIV);

	if (reg <= 5 && reg >= 3) { /* 40MHz Xtal */
		val |= FUNC9(0x01);
		FUNC15(phy, val, RG_PE1_H_PLL_REG);
		FUNC13(dev, "Xtal is 40MHz\n");
	} else { /* 25MHz | 20MHz Xtal */
		val |= FUNC9(0x00);
		FUNC15(phy, val, RG_PE1_H_PLL_REG);
		if (reg >= 6) {
			FUNC13(dev, "Xtal is 25MHz\n");

			/* Select feedback clock */
			val = FUNC14(phy, RG_PE1_H_PLL_FBKSEL_REG);
			val &= ~(RG_PE1_H_PLL_FBKSEL);
			val |= FUNC6(0x01);
			FUNC15(phy, val, RG_PE1_H_PLL_FBKSEL_REG);

			/* DDS NCPO PCW (for host mode) */
			val = FUNC14(phy, RG_PE1_H_LCDDS_SSC_PRD_REG);
			val &= ~(RG_PE1_H_LCDDS_SSC_PRD);
			val |= FUNC2(0x18000000);
			FUNC15(phy, val, RG_PE1_H_LCDDS_SSC_PRD_REG);

			/* DDS SSC dither period control */
			val = FUNC14(phy, RG_PE1_H_LCDDS_SSC_PRD_REG);
			val &= ~(RG_PE1_H_LCDDS_SSC_PRD);
			val |= FUNC2(0x18d);
			FUNC15(phy, val, RG_PE1_H_LCDDS_SSC_PRD_REG);

			/* DDS SSC dither amplitude control */
			val = FUNC14(phy, RG_PE1_H_LCDDS_SSC_DELTA_REG);
			val &= ~(RG_PE1_H_LCDDS_SSC_DELTA |
				 RG_PE1_H_LCDDS_SSC_DELTA1);
			val |= FUNC1(0x4a);
			val |= FUNC0(0x4a);
			FUNC15(phy, val, RG_PE1_H_LCDDS_SSC_DELTA_REG);
		} else {
			FUNC13(dev, "Xtal is 20MHz\n");
		}
	}

	/* DDS clock inversion */
	val = FUNC14(phy, RG_PE1_LCDDS_CLK_PH_INV_REG);
	val &= ~(RG_PE1_LCDDS_CLK_PH_INV);
	val |= RG_PE1_LCDDS_CLK_PH_INV;
	FUNC15(phy, val, RG_PE1_LCDDS_CLK_PH_INV_REG);

	/* Set PLL bits */
	val = FUNC14(phy, RG_PE1_H_PLL_REG);
	val &= ~(RG_PE1_H_PLL_BC | RG_PE1_H_PLL_BP | RG_PE1_H_PLL_IR |
		 RG_PE1_H_PLL_IC | RG_PE1_PLL_DIVEN);
	val |= FUNC3(0x02);
	val |= FUNC4(0x06);
	val |= FUNC8(0x02);
	val |= FUNC7(0x01);
	val |= FUNC12(0x02);
	FUNC15(phy, val, RG_PE1_H_PLL_REG);

	val = FUNC14(phy, RG_PE1_H_PLL_BR_REG);
	val &= ~(RG_PE1_H_PLL_BR);
	val |= FUNC5(0x00);
	FUNC15(phy, val, RG_PE1_H_PLL_BR_REG);

	if (reg <= 5 && reg >= 3) { /* 40MHz Xtal */
		/* set force mode enable of da_pe1_mstckdiv */
		val = FUNC14(phy, RG_PE1_MSTCKDIV_REG);
		val &= ~(RG_PE1_MSTCKDIV | RG_PE1_FRC_MSTCKDIV);
		val |= (FUNC11(0x01) | RG_PE1_FRC_MSTCKDIV);
		FUNC15(phy, val, RG_PE1_MSTCKDIV_REG);
	}
}