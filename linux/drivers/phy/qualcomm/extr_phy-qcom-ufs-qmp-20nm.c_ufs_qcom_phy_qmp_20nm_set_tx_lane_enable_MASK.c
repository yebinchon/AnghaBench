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
struct ufs_qcom_phy {scalar_t__ mmio; } ;

/* Variables and functions */
 scalar_t__ UFS_PHY_TX_LANE_ENABLE ; 
 int UFS_PHY_TX_LANE_ENABLE_MASK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static
void FUNC2(struct ufs_qcom_phy *phy, u32 val)
{
	FUNC1(val & UFS_PHY_TX_LANE_ENABLE_MASK,
			phy->mmio + UFS_PHY_TX_LANE_ENABLE);
	FUNC0();
}