#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mt76x2_tx_power_info {TYPE_3__* chain; } ;
struct mt76x2_tssi_comp {int cal_mode; int pa_mode; int /*<<< orphan*/  offset1; int /*<<< orphan*/  slope1; int /*<<< orphan*/  offset0; int /*<<< orphan*/  slope0; } ;
struct TYPE_8__ {int tssi_comp_pending; int dpd_cal_done; int /*<<< orphan*/  tssi_cal_done; } ;
struct TYPE_5__ {struct ieee80211_channel* chan; } ;
struct TYPE_6__ {TYPE_1__ chandef; } ;
struct mt76x02_dev {TYPE_4__ cal; scalar_t__ ed_tx_blocked; TYPE_2__ mt76; } ;
struct ieee80211_channel {int /*<<< orphan*/  hw_value; int /*<<< orphan*/  band; } ;
struct TYPE_7__ {int /*<<< orphan*/  tssi_offset; int /*<<< orphan*/  tssi_slope; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CORE ; 
 int /*<<< orphan*/  MCU_CAL_DPD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76x02_dev*,struct mt76x2_tx_power_info*,struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC6 (struct mt76x02_dev*,struct mt76x2_tssi_comp*) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

void FUNC8(struct mt76x02_dev *dev)
{
	struct ieee80211_channel *chan = dev->mt76.chandef.chan;
	struct mt76x2_tx_power_info txp;
	struct mt76x2_tssi_comp t = {};

	if (!dev->cal.tssi_cal_done)
		return;

	if (!dev->cal.tssi_comp_pending) {
		/* TSSI trigger */
		t.cal_mode = FUNC0(0);
		FUNC6(dev, &t);
		dev->cal.tssi_comp_pending = true;
	} else {
		if (FUNC2(dev, FUNC1(CORE, 34)) & FUNC0(4))
			return;

		dev->cal.tssi_comp_pending = false;
		FUNC5(dev, &txp, chan);

		if (FUNC3(dev, chan->band))
			t.pa_mode = 1;

		t.cal_mode = FUNC0(1);
		t.slope0 = txp.chain[0].tssi_slope;
		t.offset0 = txp.chain[0].tssi_offset;
		t.slope1 = txp.chain[1].tssi_slope;
		t.offset1 = txp.chain[1].tssi_offset;
		FUNC6(dev, &t);

		if (t.pa_mode || dev->cal.dpd_cal_done || dev->ed_tx_blocked)
			return;

		FUNC7(10000, 20000);
		FUNC4(dev, MCU_CAL_DPD, chan->hw_value);
		dev->cal.dpd_cal_done = true;
	}
}