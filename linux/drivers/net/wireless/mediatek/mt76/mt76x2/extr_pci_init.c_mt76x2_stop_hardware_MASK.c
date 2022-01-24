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
struct TYPE_2__ {int /*<<< orphan*/  mac_work; } ;
struct mt76x02_dev {int /*<<< orphan*/  wdt_work; TYPE_1__ mt76; int /*<<< orphan*/  cal_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mt76x02_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int) ; 

void FUNC3(struct mt76x02_dev *dev)
{
	FUNC0(&dev->cal_work);
	FUNC0(&dev->mt76.mac_work);
	FUNC0(&dev->wdt_work);
	FUNC1(dev, false);
	FUNC2(dev, false);
}