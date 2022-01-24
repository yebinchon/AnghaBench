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
struct sas_phy_linkrates {int maximum_linkrate; } ;
struct mvs_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHY_RST_HARD ; 
 int SAS_LINK_RATE_1_5_GBPS ; 
 int /*<<< orphan*/  FUNC0 (struct mvs_info*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mvs_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mvs_info*,int,int) ; 

__attribute__((used)) static void FUNC3(struct mvs_info *mvi, u32 phy_id,
				       struct sas_phy_linkrates *rates)
{
	u32 lrmax = 0;
	u32 tmp;

	tmp = FUNC1(mvi, phy_id);
	lrmax = (rates->maximum_linkrate - SAS_LINK_RATE_1_5_GBPS) << 12;

	if (lrmax) {
		tmp &= ~(0x3 << 12);
		tmp |= lrmax;
	}
	FUNC2(mvi, phy_id, tmp);
	FUNC0(mvi, phy_id, PHY_RST_HARD);
}