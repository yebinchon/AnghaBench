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
struct sas_phy_linkrates {int minimum_linkrate; int maximum_linkrate; } ;
struct mvs_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MVS_HARD_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct mvs_info*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mvs_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mvs_info*,int,int) ; 

__attribute__((used)) static void FUNC3(struct mvs_info *mvi, u32 phy_id,
			struct sas_phy_linkrates *rates)
{
	u32 lrmin = 0, lrmax = 0;
	u32 tmp;

	tmp = FUNC1(mvi, phy_id);
	lrmin = (rates->minimum_linkrate << 8);
	lrmax = (rates->maximum_linkrate << 12);

	if (lrmin) {
		tmp &= ~(0xf << 8);
		tmp |= lrmin;
	}
	if (lrmax) {
		tmp &= ~(0xf << 12);
		tmp |= lrmax;
	}
	FUNC2(mvi, phy_id, tmp);
	FUNC0(mvi, phy_id, MVS_HARD_RESET);
}