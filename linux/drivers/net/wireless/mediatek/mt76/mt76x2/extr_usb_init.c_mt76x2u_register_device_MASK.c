#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  sband; } ;
struct TYPE_7__ {int /*<<< orphan*/  sband; } ;
struct TYPE_6__ {scalar_t__ sg_en; } ;
struct TYPE_9__ {TYPE_3__ sband_5g; TYPE_2__ sband_2g; int /*<<< orphan*/  state; TYPE_1__ usb; } ;
struct mt76x02_dev {TYPE_4__ mt76; int /*<<< orphan*/  cal_work; } ;
struct ieee80211_hw {int max_tx_fragments; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MT76_STATE_INITIALIZED ; 
 int MT_TX_SG_MAX_SIZE ; 
 struct ieee80211_hw* FUNC2 (struct mt76x02_dev*) ; 
 int FUNC3 (TYPE_4__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  mt76x02_rates ; 
 int /*<<< orphan*/  FUNC7 (struct mt76x02_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct mt76x02_dev*) ; 
 int FUNC9 (struct mt76x02_dev*) ; 
 int FUNC10 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  mt76x2u_phy_calibrate ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC12(struct mt76x02_dev *dev)
{
	struct ieee80211_hw *hw = FUNC2(dev);
	int err;

	FUNC1(&dev->cal_work, mt76x2u_phy_calibrate);
	FUNC6(dev);

	err = FUNC9(dev);
	if (err < 0)
		return err;

	err = FUNC4(&dev->mt76);
	if (err < 0)
		goto fail;

	err = FUNC10(dev);
	if (err < 0)
		goto fail;

	err = FUNC3(&dev->mt76, true, mt76x02_rates,
				   FUNC0(mt76x02_rates));
	if (err)
		goto fail;

	/* check hw sg support in order to enable AMSDU */
	if (dev->mt76.usb.sg_en)
		hw->max_tx_fragments = MT_TX_SG_MAX_SIZE;
	else
		hw->max_tx_fragments = 1;

	FUNC11(MT76_STATE_INITIALIZED, &dev->mt76.state);

	FUNC5(dev);
	FUNC7(dev, &dev->mt76.sband_2g.sband);
	FUNC7(dev, &dev->mt76.sband_5g.sband);

	return 0;

fail:
	FUNC8(dev);
	return err;
}