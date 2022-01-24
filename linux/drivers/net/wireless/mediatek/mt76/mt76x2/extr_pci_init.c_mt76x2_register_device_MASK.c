#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  sband; } ;
struct TYPE_4__ {int /*<<< orphan*/  sband; } ;
struct TYPE_6__ {TYPE_2__ sband_5g; TYPE_1__ sband_2g; } ;
struct mt76x02_dev {TYPE_3__ mt76; int /*<<< orphan*/  cal_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  mt76x02_rates ; 
 int FUNC6 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mt76x02_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mt76x2_phy_calibrate ; 
 int /*<<< orphan*/  FUNC8 (struct mt76x02_dev*) ; 

int FUNC9(struct mt76x02_dev *dev)
{
	int ret;

	FUNC1(&dev->cal_work, mt76x2_phy_calibrate);

	FUNC5(dev);

	ret = FUNC6(dev);
	if (ret)
		return ret;

	FUNC3(dev);

	ret = FUNC2(&dev->mt76, true, mt76x02_rates,
				   FUNC0(mt76x02_rates));
	if (ret)
		goto fail;

	FUNC4(dev);
	FUNC7(dev, &dev->mt76.sband_2g.sband);
	FUNC7(dev, &dev->mt76.sband_5g.sband);

	return 0;

fail:
	FUNC8(dev);
	return ret;
}