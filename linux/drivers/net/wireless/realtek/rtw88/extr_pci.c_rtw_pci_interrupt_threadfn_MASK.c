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
struct rtw_pci {int /*<<< orphan*/  irq_lock; } ;
struct rtw_dev {scalar_t__ priv; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int IMR_BEDOK ; 
 int IMR_BKDOK ; 
 int IMR_H2CDOK ; 
 int IMR_HIGHDOK ; 
 int IMR_MGNTDOK ; 
 int IMR_ROK ; 
 int IMR_VIDOK ; 
 int IMR_VODOK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  RTW_RX_QUEUE_MPDU ; 
 int /*<<< orphan*/  RTW_TX_QUEUE_BE ; 
 int /*<<< orphan*/  RTW_TX_QUEUE_BK ; 
 int /*<<< orphan*/  RTW_TX_QUEUE_H2C ; 
 int /*<<< orphan*/  RTW_TX_QUEUE_HI0 ; 
 int /*<<< orphan*/  RTW_TX_QUEUE_MGMT ; 
 int /*<<< orphan*/  RTW_TX_QUEUE_VI ; 
 int /*<<< orphan*/  RTW_TX_QUEUE_VO ; 
 int /*<<< orphan*/  FUNC0 (struct rtw_dev*,struct rtw_pci*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,struct rtw_pci*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,struct rtw_pci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,struct rtw_pci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev)
{
	struct rtw_dev *rtwdev = dev;
	struct rtw_pci *rtwpci = (struct rtw_pci *)rtwdev->priv;
	unsigned long flags;
	u32 irq_status[4];

	FUNC4(&rtwpci->irq_lock, flags);
	FUNC1(rtwdev, rtwpci, irq_status);

	if (irq_status[0] & IMR_MGNTDOK)
		FUNC3(rtwdev, rtwpci, RTW_TX_QUEUE_MGMT);
	if (irq_status[0] & IMR_HIGHDOK)
		FUNC3(rtwdev, rtwpci, RTW_TX_QUEUE_HI0);
	if (irq_status[0] & IMR_BEDOK)
		FUNC3(rtwdev, rtwpci, RTW_TX_QUEUE_BE);
	if (irq_status[0] & IMR_BKDOK)
		FUNC3(rtwdev, rtwpci, RTW_TX_QUEUE_BK);
	if (irq_status[0] & IMR_VODOK)
		FUNC3(rtwdev, rtwpci, RTW_TX_QUEUE_VO);
	if (irq_status[0] & IMR_VIDOK)
		FUNC3(rtwdev, rtwpci, RTW_TX_QUEUE_VI);
	if (irq_status[3] & IMR_H2CDOK)
		FUNC3(rtwdev, rtwpci, RTW_TX_QUEUE_H2C);
	if (irq_status[0] & IMR_ROK)
		FUNC2(rtwdev, rtwpci, RTW_RX_QUEUE_MPDU);

	/* all of the jobs for this interrupt have been done */
	FUNC0(rtwdev, rtwpci);
	FUNC5(&rtwpci->irq_lock, flags);

	return IRQ_HANDLED;
}