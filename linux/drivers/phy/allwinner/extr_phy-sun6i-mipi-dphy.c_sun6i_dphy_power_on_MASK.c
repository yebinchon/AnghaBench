#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {scalar_t__ lanes; } ;
struct sun6i_dphy {int /*<<< orphan*/  regs; TYPE_1__ config; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUN6I_DPHY_ANA0_REG ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int SUN6I_DPHY_ANA0_REG_DMPC ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int SUN6I_DPHY_ANA0_REG_PWS ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  SUN6I_DPHY_ANA1_REG ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int SUN6I_DPHY_ANA1_REG_VTTMODE ; 
 int SUN6I_DPHY_ANA2_EN_CK_CPU ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int SUN6I_DPHY_ANA2_EN_P2S_CPU_MASK ; 
 int /*<<< orphan*/  SUN6I_DPHY_ANA2_REG ; 
 int SUN6I_DPHY_ANA2_REG_ENIB ; 
 int SUN6I_DPHY_ANA3_EN_DIV ; 
 int SUN6I_DPHY_ANA3_EN_LDOC ; 
 int SUN6I_DPHY_ANA3_EN_LDOD ; 
 int SUN6I_DPHY_ANA3_EN_LDOR ; 
 int SUN6I_DPHY_ANA3_EN_VTTC ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int SUN6I_DPHY_ANA3_EN_VTTD_MASK ; 
 int /*<<< orphan*/  SUN6I_DPHY_ANA3_REG ; 
 int /*<<< orphan*/  SUN6I_DPHY_ANA4_REG ; 
 int FUNC8 (int) ; 
 int SUN6I_DPHY_ANA4_REG_DMPLVC ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int) ; 
 int FUNC14 (int) ; 
 int FUNC15 (int) ; 
 int SUN6I_DPHY_GCTL_EN ; 
 int FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  SUN6I_DPHY_GCTL_REG ; 
 int SUN6I_DPHY_TX_CTL_HS_TX_CLK_CONT ; 
 int /*<<< orphan*/  SUN6I_DPHY_TX_CTL_REG ; 
 int FUNC17 (int) ; 
 int FUNC18 (int) ; 
 int FUNC19 (int) ; 
 int /*<<< orphan*/  SUN6I_DPHY_TX_TIME0_REG ; 
 int FUNC20 (int) ; 
 int FUNC21 (int) ; 
 int FUNC22 (int) ; 
 int FUNC23 (int) ; 
 int /*<<< orphan*/  SUN6I_DPHY_TX_TIME1_REG ; 
 int FUNC24 (int) ; 
 int /*<<< orphan*/  SUN6I_DPHY_TX_TIME2_REG ; 
 int /*<<< orphan*/  SUN6I_DPHY_TX_TIME3_REG ; 
 int FUNC25 (int) ; 
 int FUNC26 (int) ; 
 int /*<<< orphan*/  SUN6I_DPHY_TX_TIME4_REG ; 
 struct sun6i_dphy* FUNC27 (struct phy*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC30 (int) ; 

__attribute__((used)) static int FUNC31(struct phy *phy)
{
	struct sun6i_dphy *dphy = FUNC27(phy);
	u8 lanes_mask = FUNC0(dphy->config.lanes - 1, 0);

	FUNC29(dphy->regs, SUN6I_DPHY_TX_CTL_REG,
		     SUN6I_DPHY_TX_CTL_HS_TX_CLK_CONT);

	FUNC29(dphy->regs, SUN6I_DPHY_TX_TIME0_REG,
		     FUNC19(14) |
		     FUNC17(6) |
		     FUNC18(10));

	FUNC29(dphy->regs, SUN6I_DPHY_TX_TIME1_REG,
		     FUNC22(7) |
		     FUNC23(50) |
		     FUNC21(3) |
		     FUNC20(10));

	FUNC29(dphy->regs, SUN6I_DPHY_TX_TIME2_REG,
		     FUNC24(30));

	FUNC29(dphy->regs, SUN6I_DPHY_TX_TIME3_REG, 0);

	FUNC29(dphy->regs, SUN6I_DPHY_TX_TIME4_REG,
		     FUNC25(3) |
		     FUNC26(3));

	FUNC29(dphy->regs, SUN6I_DPHY_GCTL_REG,
		     FUNC16(dphy->config.lanes) |
		     SUN6I_DPHY_GCTL_EN);

	FUNC29(dphy->regs, SUN6I_DPHY_ANA0_REG,
		     SUN6I_DPHY_ANA0_REG_PWS |
		     SUN6I_DPHY_ANA0_REG_DMPC |
		     FUNC3(7) |
		     FUNC2(lanes_mask) |
		     FUNC1(lanes_mask));

	FUNC29(dphy->regs, SUN6I_DPHY_ANA1_REG,
		     FUNC4(1) |
		     FUNC5(7));

	FUNC29(dphy->regs, SUN6I_DPHY_ANA4_REG,
		     FUNC8(1) |
		     FUNC10(1) |
		     FUNC11(1) |
		     FUNC12(1) |
		     FUNC13(1) |
		     FUNC14(1) |
		     FUNC15(1) |
		     SUN6I_DPHY_ANA4_REG_DMPLVC |
		     FUNC9(lanes_mask));

	FUNC29(dphy->regs, SUN6I_DPHY_ANA2_REG,
		     SUN6I_DPHY_ANA2_REG_ENIB);
	FUNC30(5);

	FUNC29(dphy->regs, SUN6I_DPHY_ANA3_REG,
		     SUN6I_DPHY_ANA3_EN_LDOR |
		     SUN6I_DPHY_ANA3_EN_LDOC |
		     SUN6I_DPHY_ANA3_EN_LDOD);
	FUNC30(1);

	FUNC28(dphy->regs, SUN6I_DPHY_ANA3_REG,
			   SUN6I_DPHY_ANA3_EN_VTTC |
			   SUN6I_DPHY_ANA3_EN_VTTD_MASK,
			   SUN6I_DPHY_ANA3_EN_VTTC |
			   FUNC7(lanes_mask));
	FUNC30(1);

	FUNC28(dphy->regs, SUN6I_DPHY_ANA3_REG,
			   SUN6I_DPHY_ANA3_EN_DIV,
			   SUN6I_DPHY_ANA3_EN_DIV);
	FUNC30(1);

	FUNC28(dphy->regs, SUN6I_DPHY_ANA2_REG,
			   SUN6I_DPHY_ANA2_EN_CK_CPU,
			   SUN6I_DPHY_ANA2_EN_CK_CPU);
	FUNC30(1);

	FUNC28(dphy->regs, SUN6I_DPHY_ANA1_REG,
			   SUN6I_DPHY_ANA1_REG_VTTMODE,
			   SUN6I_DPHY_ANA1_REG_VTTMODE);

	FUNC28(dphy->regs, SUN6I_DPHY_ANA2_REG,
			   SUN6I_DPHY_ANA2_EN_P2S_CPU_MASK,
			   FUNC6(lanes_mask));

	return 0;
}