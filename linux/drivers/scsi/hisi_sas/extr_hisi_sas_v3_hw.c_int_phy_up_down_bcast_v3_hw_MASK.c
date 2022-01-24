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
typedef  scalar_t__ irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  CHL_INT0 ; 
 int CHL_INT0_NOT_RDY_MSK ; 
 int CHL_INT0_SL_PHY_ENABLE_MSK ; 
 int CHL_INT0_SL_RX_BCST_ACK_MSK ; 
 int /*<<< orphan*/  CHNL_INT_STATUS ; 
 scalar_t__ IRQ_HANDLED ; 
 scalar_t__ IRQ_NONE ; 
 int /*<<< orphan*/  PHY_STATE ; 
 int FUNC0 (struct hisi_hba*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hisi_hba*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,struct hisi_hba*) ; 
 scalar_t__ FUNC3 (int,struct hisi_hba*) ; 
 scalar_t__ FUNC4 (int,struct hisi_hba*) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq_no, void *p)
{
	struct hisi_hba *hisi_hba = p;
	u32 irq_msk;
	int phy_no = 0;
	irqreturn_t res = IRQ_NONE;

	irq_msk = FUNC1(hisi_hba, CHNL_INT_STATUS)
				& 0x11111111;
	while (irq_msk) {
		if (irq_msk  & 1) {
			u32 irq_value = FUNC0(hisi_hba, phy_no,
							    CHL_INT0);
			u32 phy_state = FUNC1(hisi_hba, PHY_STATE);
			int rdy = phy_state & (1 << phy_no);

			if (rdy) {
				if (irq_value & CHL_INT0_SL_PHY_ENABLE_MSK)
					/* phy up */
					if (FUNC4(phy_no, hisi_hba)
							== IRQ_HANDLED)
						res = IRQ_HANDLED;
				if (irq_value & CHL_INT0_SL_RX_BCST_ACK_MSK)
					/* phy bcast */
					if (FUNC2(phy_no, hisi_hba)
							== IRQ_HANDLED)
						res = IRQ_HANDLED;
			} else {
				if (irq_value & CHL_INT0_NOT_RDY_MSK)
					/* phy down */
					if (FUNC3(phy_no, hisi_hba)
							== IRQ_HANDLED)
						res = IRQ_HANDLED;
			}
		}
		irq_msk >>= 4;
		phy_no++;
	}

	return res;
}