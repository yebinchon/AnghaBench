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
typedef  int u8 ;
struct TYPE_2__ {int avg_rssi_all; int low_gain; int agc_gain_adjust; scalar_t__* agc_gain_init; scalar_t__* agc_gain_cur; } ;
struct mt76x02_dev {TYPE_1__ cal; int /*<<< orphan*/  mt76; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_RX_STAT_1 ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mt76x02_dev*) ; 
 int FUNC3 (struct mt76x02_dev*) ; 
 scalar_t__ FUNC4 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76x02_dev*) ; 

__attribute__((used)) static void
FUNC6(struct mt76x02_dev *dev)
{
	bool gain_change;
	u8 gain_delta;
	int low_gain;

	dev->cal.avg_rssi_all = FUNC0(&dev->mt76);
	if (!dev->cal.avg_rssi_all)
		dev->cal.avg_rssi_all = -75;

	low_gain = (dev->cal.avg_rssi_all > FUNC3(dev)) +
		(dev->cal.avg_rssi_all > FUNC2(dev));

	gain_change = dev->cal.low_gain < 0 ||
		      (dev->cal.low_gain & 2) ^ (low_gain & 2);
	dev->cal.low_gain = low_gain;

	if (!gain_change) {
		if (FUNC4(dev))
			FUNC5(dev);
		return;
	}

	dev->cal.agc_gain_adjust = (low_gain == 2) ? 0 : 10;
	gain_delta = (low_gain == 2) ? 10 : 0;

	dev->cal.agc_gain_cur[0] = dev->cal.agc_gain_init[0] - gain_delta;
	FUNC5(dev);

	/* clear false CCA counters */
	FUNC1(dev, MT_RX_STAT_1);
}