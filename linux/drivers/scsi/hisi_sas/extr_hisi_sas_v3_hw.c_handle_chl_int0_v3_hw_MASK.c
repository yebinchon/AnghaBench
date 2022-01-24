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
struct hisi_hba {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHL_INT0 ; 
 int CHL_INT0_NOT_RDY_MSK ; 
 int CHL_INT0_PHY_RDY_MSK ; 
 int CHL_INT0_SL_PHY_ENABLE_MSK ; 
 int CHL_INT0_SL_RX_BCST_ACK_MSK ; 
 int /*<<< orphan*/  FUNC0 (struct hisi_hba*,int) ; 
 int FUNC1 (struct hisi_hba*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hisi_hba*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct hisi_hba *hisi_hba, int phy_no)
{
	u32 irq_value0 = FUNC1(hisi_hba, phy_no, CHL_INT0);

	if (irq_value0 & CHL_INT0_PHY_RDY_MSK)
		FUNC0(hisi_hba, phy_no);

	FUNC2(hisi_hba, phy_no, CHL_INT0,
			     irq_value0 & (~CHL_INT0_SL_RX_BCST_ACK_MSK)
			     & (~CHL_INT0_SL_PHY_ENABLE_MSK)
			     & (~CHL_INT0_NOT_RDY_MSK));
}