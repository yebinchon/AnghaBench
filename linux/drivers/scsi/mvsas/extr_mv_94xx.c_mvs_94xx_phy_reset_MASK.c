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
struct mvs_info {int dummy; } ;

/* Variables and functions */
 int MVS_PHY_TUNE ; 
 int PHYEV_RDY_CH ; 
 int /*<<< orphan*/  PHYR_SATA_CTL ; 
 int PHY_RST ; 
 int PHY_RST_HARD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct mvs_info*,int) ; 
 int FUNC2 (struct mvs_info*,int) ; 
 int FUNC3 (struct mvs_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mvs_info*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mvs_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mvs_info*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mvs_info*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct mvs_info *mvi, u32 phy_id, int hard)
{
	u32 tmp;
	u32 delay = 5000;
	if (hard == MVS_PHY_TUNE) {
		FUNC5(mvi, phy_id, PHYR_SATA_CTL);
		tmp = FUNC2(mvi, phy_id);
		FUNC6(mvi, phy_id, tmp|0x20000000);
		FUNC6(mvi, phy_id, tmp|0x100000);
		return;
	}
	tmp = FUNC3(mvi, phy_id);
	tmp &= ~PHYEV_RDY_CH;
	FUNC7(mvi, phy_id, tmp);
	if (hard) {
		tmp = FUNC1(mvi, phy_id);
		tmp |= PHY_RST_HARD;
		FUNC4(mvi, phy_id, tmp);
		do {
			tmp = FUNC1(mvi, phy_id);
			FUNC8(10);
			delay--;
		} while ((tmp & PHY_RST_HARD) && delay);
		if (!delay)
			FUNC0("phy hard reset failed.\n");
	} else {
		tmp = FUNC1(mvi, phy_id);
		tmp |= PHY_RST;
		FUNC4(mvi, phy_id, tmp);
	}
}