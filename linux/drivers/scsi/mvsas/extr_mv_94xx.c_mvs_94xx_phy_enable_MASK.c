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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct mvs_info {TYPE_1__* pdev; } ;
struct TYPE_2__ {scalar_t__ revision; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_APP_MEM_CTL ; 
 int /*<<< orphan*/  CMD_HOST_RD_DATA ; 
 scalar_t__ VANIR_A0_REV ; 
 scalar_t__ VANIR_B0_REV ; 
 int /*<<< orphan*/  VSR_PHY_MODE2 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mvs_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mvs_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mvs_info*,int,int) ; 

__attribute__((used)) static void FUNC4(struct mvs_info *mvi, u32 phy_id)
{
	u32 tmp;
	u8 revision = 0;

	revision = mvi->pdev->revision;
	if (revision == VANIR_A0_REV) {
		FUNC2(mvi, phy_id, CMD_HOST_RD_DATA);
		FUNC3(mvi, phy_id, 0x8300ffc1);
	}
	if (revision == VANIR_B0_REV) {
		FUNC2(mvi, phy_id, CMD_APP_MEM_CTL);
		FUNC3(mvi, phy_id, 0x08001006);
		FUNC2(mvi, phy_id, CMD_HOST_RD_DATA);
		FUNC3(mvi, phy_id, 0x0000705f);
	}

	FUNC2(mvi, phy_id, VSR_PHY_MODE2);
	tmp = FUNC1(mvi, phy_id);
	tmp |= FUNC0(0);
	FUNC3(mvi, phy_id, tmp & 0xfd7fffff);
}