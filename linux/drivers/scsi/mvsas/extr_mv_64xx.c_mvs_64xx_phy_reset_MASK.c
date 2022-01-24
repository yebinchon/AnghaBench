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
 int MVS_HARD_RESET ; 
 int MVS_SOFT_RESET ; 
 int PHYEV_RDY_CH ; 
 int PHY_RST ; 
 int PHY_RST_HARD ; 
 int FUNC0 (struct mvs_info*,int) ; 
 int FUNC1 (struct mvs_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mvs_info*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mvs_info*,int,int) ; 

__attribute__((used)) static void FUNC4(struct mvs_info *mvi, u32 phy_id, int hard)
{
	u32 tmp;
	tmp = FUNC1(mvi, phy_id);
	tmp &= ~PHYEV_RDY_CH;
	FUNC3(mvi, phy_id, tmp);
	tmp = FUNC0(mvi, phy_id);
	if (hard == MVS_HARD_RESET)
		tmp |= PHY_RST_HARD;
	else if (hard == MVS_SOFT_RESET)
		tmp |= PHY_RST;
	FUNC2(mvi, phy_id, tmp);
	if (hard) {
		do {
			tmp = FUNC0(mvi, phy_id);
		} while (tmp & PHY_RST_HARD);
	}
}