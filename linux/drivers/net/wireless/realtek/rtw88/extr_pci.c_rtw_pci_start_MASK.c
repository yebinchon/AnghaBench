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
struct rtw_pci {int /*<<< orphan*/  irq_lock; } ;
struct rtw_dev {scalar_t__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtw_dev*,struct rtw_pci*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,struct rtw_pci*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct rtw_dev *rtwdev)
{
	struct rtw_pci *rtwpci = (struct rtw_pci *)rtwdev->priv;
	unsigned long flags;

	FUNC0(rtwdev, rtwpci);

	FUNC2(&rtwpci->irq_lock, flags);
	FUNC1(rtwdev, rtwpci);
	FUNC3(&rtwpci->irq_lock, flags);

	return 0;
}