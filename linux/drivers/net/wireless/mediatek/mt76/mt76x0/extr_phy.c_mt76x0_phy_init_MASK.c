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
struct mt76x02_dev {int /*<<< orphan*/  cal_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  mt76x0_phy_calibration_work ; 
 int /*<<< orphan*/  FUNC4 (struct mt76x02_dev*) ; 

void FUNC5(struct mt76x02_dev *dev)
{
	FUNC0(&dev->cal_work, mt76x0_phy_calibration_work);

	FUNC3(dev);
	FUNC4(dev);
	FUNC1(dev);
	FUNC2(dev);
}