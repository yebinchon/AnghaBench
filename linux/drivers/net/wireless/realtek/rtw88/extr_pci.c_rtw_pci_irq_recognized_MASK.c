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
typedef  int /*<<< orphan*/  u32 ;
struct rtw_pci {int /*<<< orphan*/ * irq_mask; } ;
struct rtw_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTK_PCI_HISR0 ; 
 int /*<<< orphan*/  RTK_PCI_HISR1 ; 
 int /*<<< orphan*/  RTK_PCI_HISR3 ; 
 int /*<<< orphan*/  FUNC0 (struct rtw_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct rtw_dev *rtwdev,
				   struct rtw_pci *rtwpci, u32 *irq_status)
{
	irq_status[0] = FUNC0(rtwdev, RTK_PCI_HISR0);
	irq_status[1] = FUNC0(rtwdev, RTK_PCI_HISR1);
	irq_status[3] = FUNC0(rtwdev, RTK_PCI_HISR3);
	irq_status[0] &= rtwpci->irq_mask[0];
	irq_status[1] &= rtwpci->irq_mask[1];
	irq_status[3] &= rtwpci->irq_mask[3];
	FUNC1(rtwdev, RTK_PCI_HISR0, irq_status[0]);
	FUNC1(rtwdev, RTK_PCI_HISR1, irq_status[1]);
	FUNC1(rtwdev, RTK_PCI_HISR3, irq_status[3]);
}